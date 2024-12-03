import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingHomeAddress extends StatelessWidget {
  const SettingHomeAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Address", style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600,),),
      ),

      body: const Column(
        children: [
          ListTile(
            leading: Icon(FontAwesomeIcons.idBadge, size: 30,),
            title: Text('Address1', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600,),),
            trailing: Icon(FontAwesomeIcons.pencil),
            subtitle: Text("local-street, Mumbai, India", style: TextStyle(fontSize: 18,),),
          ),

          ListTile(
            leading: Icon(FontAwesomeIcons.idBadge, size: 30,),
            title: Text('Address1', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600,),),
            trailing: Icon(FontAwesomeIcons.pencil),
            subtitle: Text("local-street, Mumbai, India", style: TextStyle(fontSize: 18,),),
          ),

          ListTile(
            leading: Icon(FontAwesomeIcons.idBadge, size: 30,),
            title: Text('Address1', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600,),),
            trailing: Icon(FontAwesomeIcons.pencil),
            subtitle: Text("local-street, Mumbai, India", style: TextStyle(fontSize: 18,),),
          ),
        ],
      ),
    );
  }
}
