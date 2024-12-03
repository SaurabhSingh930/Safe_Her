import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class SettingAlerts extends StatelessWidget {
  const SettingAlerts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alerts & Notifications"),
      ),

      body: Column(
        children: [
          ListTile(
            title: const Text("alerts", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600,),),
            subtitle: const Text("Please select it while in danger", style: TextStyle(fontSize: 18,),),
            trailing: Switch(
              value: true,
              onChanged: (value) {},
            ),
          ),

          ListTile(
            title: const Text("App Notifications", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600,),),
            subtitle: const Text("It helps to notify you", style: TextStyle(fontSize: 18,),),
            trailing: Switch(
              value: true,
              onChanged: (value) {},
            ),
          )
        ],
      ),
    );
  }
}
