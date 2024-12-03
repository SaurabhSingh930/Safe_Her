import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:safe_her/components/ui_components/button/elevated_button.dart';

class FaceCapture extends StatelessWidget {
  const FaceCapture({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
                width: screenWidth * 0.8,
                height: screenHeight * 0.4,
                child: Stack(
                  children: [
                    Container(
                      width: screenWidth * 0.8,
                      height: screenHeight * 0.4,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(232, 232, 232, 0.7),
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      child: SizedBox(
                        width: screenWidth * 0.8,
                        height: screenHeight * 0.4,
                        child: Image.asset(
                          "assets/images/face_recognition.gif",
                          scale: 0.5,
                        ),
                      ),
                    ),
                  ],
                )),
            const Text(
              'Processing...',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Suse'),
            ),
            SizedBox(
              width: screenWidth * 0.8,
              child: const Text(
                'Last step! Hold on while we process your face data.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 24,
                    color: Color.fromRGBO(84, 84, 84, 0.8),
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Suse'),
              ),
            ),
            SizedBox(
              width: screenWidth * 0.7,
              height: 60,
              child: SElevatedButton(
                buttonText: "Finish",
                onPressed: () {
                  //? navigate to home screen from here..
                  GoRouter.of(context).go('/home');
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
