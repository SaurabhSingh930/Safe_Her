import 'package:go_router/go_router.dart';
import 'package:safe_her/screens/home/home_screen.dart';
import 'package:safe_her/screens/home/setting/setting_alerts.dart';
import 'package:safe_her/screens/home/setting/setting_app_setting.dart';
import 'package:safe_her/screens/home/setting/setting_home_address.dart';
import 'package:safe_her/screens/home/setting/setting_profile.dart';
import 'package:safe_her/screens/home/setting/setting_relative_contact.dart';
import 'package:safe_her/screens/startup/face_capture.dart';
import 'package:safe_her/screens/startup/face_instruction.dart';
import 'package:safe_her/screens/startup/splash_screen.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),

    GoRoute(
      path: '/face-instruction',
      builder: (context, state) => const FaceInstruction(),
    ),

    GoRoute(
      path: '/face-capture',
      builder: (context, state) => const FaceCapture(),
    ),

    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),

    GoRoute(
      path: '/setting/profile',
      builder: (context, state) => const SettingProfile(),
    ),

    GoRoute(
      path: '/setting/app_setting',
      builder: (context, state) => const SettingAppSetting(),
    ),

    GoRoute(
      path: '/setting/alerts',
      builder: (context, state) => const SettingAlerts(),
    ),

    GoRoute(
      path: '/setting/relative_contact',
      builder: (context, state) => const SettingRelativeContact(),
    ),

    GoRoute(
      path: '/setting/home_address',
      builder: (context, state) => const SettingHomeAddress(),
    ),
  ],
);