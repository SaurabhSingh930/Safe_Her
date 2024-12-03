import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingRelativeContact extends StatelessWidget {
  const SettingRelativeContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Relative Contacts", style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold,),),
      ),

      body: const Column(
        children: [
          ListTile(
            leading: Icon(FontAwesomeIcons.idBadge, size: 30,),
            title: Text('Phone Number', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600,),),
            trailing: Icon(FontAwesomeIcons.pencil),
            subtitle: Text("+91-7818983657", style: TextStyle(fontSize: 18,),),
          ),

          ListTile(
            leading: Icon(FontAwesomeIcons.idBadge, size: 30,),
            title: Text('Phone Number', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600,),),
            trailing: Icon(FontAwesomeIcons.pencil),
            subtitle: Text("+91-7818983657", style: TextStyle(fontSize: 18,),),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.idBadge, size: 30,),
            title: Text('Phone Number', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600,),),
            trailing: Icon(FontAwesomeIcons.pencil),
            subtitle: Text("+91-7818983657", style: TextStyle(fontSize: 18,),),
          ),
        ],
      ),
    );
  }
}
