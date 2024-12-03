import 'package:flutter/material.dart';
import 'package:flutter_background_service/flutter_background_service.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';



class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {

  bool _isServiceRunning = false; // Track the service state

  @override
  void initState() {
    super.initState();
    // _checkServiceStatus();
  }

  // Future<void> _checkServiceStatus() async {
  //   bool isRunning = await FlutterBackgroundService().isRunning();
  //   setState(() {
  //     _isServiceRunning = isRunning;
  //   });
  // }
  //
  // void _toggleService(bool value) async {
  //   if (value) {
  //     FlutterBackgroundService().invoke("stopService");
  //   } else {
  //     FlutterBackgroundService().invoke("setAsForeground");
  //   }
  //   setState(() {
  //     _isServiceRunning = value;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            // color: Colors.amber[800],
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.white,
                    Colors.amber[400]!,
                    Colors.amber[600]!,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.circular(50)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/face_recognition.gif",
                  width: 100,
                  height: 100,
                ),
                const SizedBox(height: 10,),
                const Text(
                  'Saurabh Singh',
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Column(
            children: [
              ListTile(
                leading: const Icon(FontAwesomeIcons.user, size: 30,),
                title: const Text('Profile', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600,),),
                subtitle: const Text("Your image, age, email", style: TextStyle(fontSize: 17),),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  context.push("/setting/profile");
                },
              ),
              ListTile(
                leading: const Icon(FontAwesomeIcons.gear, size: 30,),
                title: const Text('Settings', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600,),),
                subtitle: const Text("Your app settings", style: TextStyle(fontSize: 17),),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  context.push("/setting/app_setting");
                },
              ),
              ListTile(
                leading: const Icon(FontAwesomeIcons.bell, size: 30,),
                title: const Text('Alerts & Notifications', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600,),),
                subtitle: const Text("Your safe alerts, app notifications", style: TextStyle(fontSize: 17),),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  context.push("/setting/alerts");
                },
              ),
              ListTile(
                leading: const Icon(FontAwesomeIcons.earListen, size: 30,),
                title: const Text('Active Background', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600,),),
                subtitle: const Text("Helps to listen background voice for safety", style: TextStyle(fontSize: 17),),
                // trailing switch button
                trailing: Switch(
                  value: _isServiceRunning,
                  onChanged: (value) {
                    // _toggleService(value);
                    setState(() {

                    });
                  },
                ),
                onTap: () {
                  context.push("/setting/relative_contact");
                },
              ),

              ListTile(
                leading: const Icon(FontAwesomeIcons.earListen, size: 30,),
                title: const Text('Active Gesture', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600,),),
                subtitle: const Text("Just Shake your phone to trigger sos", style: TextStyle(fontSize: 17),),
                // trailing switch button
                trailing: Switch(
                  value: _isServiceRunning,
                  onChanged: (value) {
                    // _toggleService(value);
                    setState(() {

                    });
                  },
                ),
                onTap: () {
                  context.push("/setting/relative_contact");
                },
              ),
              ListTile(
                leading: const Icon(FontAwesomeIcons.addressCard, size: 30,),
                title: const Text('Relative Contact', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600,),),
                subtitle: const Text("Manage relative details", style: TextStyle(fontSize: 17),),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  context.push("/setting/relative_contact");
                },
              ),
              ListTile(
                leading: const Icon(FontAwesomeIcons.locationPin, size: 30,),
                title: const Text('Home Addresses', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600,),),
                subtitle: const Text("Manage home addresses", style: TextStyle(fontSize: 17),),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  context.push("/setting/home_address");
                },
              ),
              ListTile(
                leading: const Icon(FontAwesomeIcons.rightFromBracket, size: 30,),
                title: const Text('Logout', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600,),),
                onTap: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}