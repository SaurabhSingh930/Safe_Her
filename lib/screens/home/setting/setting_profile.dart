import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingProfile extends StatelessWidget {
  const SettingProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),

      body: Column(
        children: [
          Image.asset("assets/images/face_recognition.gif"),
          const SizedBox(height: 60,),
          const ListTile(
            leading: Icon(FontAwesomeIcons.streetView, size: 30,),
            title: Text('Profile', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600,),),
            trailing: Icon(FontAwesomeIcons.pencil),
          ),

          const ListTile(
            leading: Icon(FontAwesomeIcons.envelope, size: 30,),
            title: Text('Gmail', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600,),),
            trailing: Icon(FontAwesomeIcons.pencil),
            subtitle: Text("deepak@gmail.com", style: TextStyle(fontSize: 18,),),
          ),

          const ListTile(
            leading: Icon(FontAwesomeIcons.calendar, size: 30,),
            title: Text('Age', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600,),),
            trailing: Icon(FontAwesomeIcons.pencil),
            subtitle: Text("20", style: TextStyle(fontSize: 18,),),
          ),

          const ListTile(
            leading: Icon(FontAwesomeIcons.restroom, size: 30,),
            title: Text('Gender', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600,),),
            trailing: Icon(FontAwesomeIcons.pencil),
            subtitle: Text("Male", style: TextStyle(fontSize: 18,),),
          )
        ],
      ),
    );
  }
}
