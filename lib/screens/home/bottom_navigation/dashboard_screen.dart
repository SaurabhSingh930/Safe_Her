// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import '../../../utils/services/sos_sms.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
  final SmsService smsService = SmsService();
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.shield,
              color: Colors.white,
            ),
            const SizedBox(width: 10),
            const Text(
              'Women Safety Dashboard',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',  // You can specify a custom font
              ),
            ),
          ],
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.pinkAccent,
                Colors.amber,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        centerTitle: true, // Center the title and icon
        elevation: 8.0, // Adds a shadow for depth
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.bar_chart,
                  color: Colors.amber[800],
                  size: 28,
                ),
                const SizedBox(width: 10),
                ShaderMask(
                  shaderCallback: (bounds) => const LinearGradient(
                    colors: [Colors.pinkAccent, Colors.amber],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ).createShader(bounds),
                  child: const Text(
                    'Analytics Overview',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white, // You still need to specify a color
                      fontFamily: 'Roboto', // Custom font if you're using one
                    ),
                  ),
                ),
              ],
            ),

            // const SizedBox(height: 20),
            // // Pie chart using CustomPaint
            // SizedBox(
            //   height: 200,
            //   child: CustomPaint(
            //     painter: PieChartPainter(),
            //   ),
            // ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Women's section
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.pinkAccent.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.pinkAccent, width: 2),
                  ),
                  child: Row(
                    children: const [
                      Icon(Icons.female, color: Colors.pinkAccent, size: 28),
                      SizedBox(width: 8),
                      Text(
                        'Women: N/A',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.pinkAccent,
                        ),
                      ),
                    ],
                  ),
                ),

                // Men's section
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.blueAccent.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.blueAccent, width: 2),
                  ),
                  child: Row(
                    children: const [
                      Icon(Icons.male, color: Colors.blueAccent, size: 28),
                      SizedBox(width: 8),
                      Text(
                        'Men: N/A',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

// Button to Generate Alert
            Center(
              child: ElevatedButton(
                onPressed: () {
                  smsService.sendSms("7817952574", "Hello");
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Alert'),
                        content: const Text('Alert has been generated successfully!'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  backgroundColor: Colors.redAccent, // Red color for alert generation
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'Generate Alert',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),
            Row(
              children: [
                Icon(
                  Icons.add_alert,
                  color: Colors.amber[800],
                  size: 28,
                ),
                const SizedBox(width: 10),
                ShaderMask(
                  shaderCallback: (bounds) => const LinearGradient(
                    colors: [Colors.pinkAccent, Colors.amber],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ).createShader(bounds),
                  child: const Text(
                    'Latest Alerts:',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white, // You still need to specify a color
                      fontFamily: 'Roboto', // Custom font if you're using one
                    ),
                  ),
                ),
              ],
            ),

            Expanded(
              child: ListView(
                children: const [
                  ListTile(
                    leading: Icon(Icons.warning, color: Colors.red),
                    title: Text('SOS Alert - Lone woman in unsafe area'),
                    subtitle: Text('Sept 17, 2024 - 9:45 PM'),
                  ),
                  ListTile(
                    leading: Icon(Icons.warning, color: Colors.red),
                    title: Text('Crowded area alert'),
                    subtitle: Text('Sept 16, 2024 - 8:30 PM'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PieChartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.fill;

    // Women slice (65%)
    paint.color = Colors.pinkAccent;
    double startAngle = -pi / 2; // Start from the top
    double sweepAngle = 2 * pi * 0.65; // 65% of the circle
    canvas.drawArc(
      Rect.fromCenter(center: Offset(size.width / 2, size.height / 2), width: size.width, height: size.height),
      startAngle,
      sweepAngle,
      true,
      paint,
    );

    // Men slice (35%)
    paint.color = Colors.blueAccent;
    startAngle += sweepAngle;
    sweepAngle = 2 * pi * 0.35; // 35% of the circle
    canvas.drawArc(
      Rect.fromCenter(center: Offset(size.width / 2, size.height / 2), width: size.width, height: size.height),
      startAngle,
      sweepAngle,
      true,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
