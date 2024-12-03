import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//? function to hide the status bar...
void hideStatusBar() {
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
}

//? function to show the status bar...
void showStatusBar() {
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
}

//? function to change the status bar color to transparent...
void makeStatusBarTransparent() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // Transparent status bar
    statusBarIconBrightness: Brightness.light, // Adjust icon brightness
  ));
}