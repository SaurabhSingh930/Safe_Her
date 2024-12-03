import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../utils/status_bar/status_bar_management.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {

    //? hide the status bar...
    hideStatusBar();

    //! Here write the navigation logic to navigate to the next screen...
       //! navigate to face-instruction screen if new...
          // GoRouter.of(context).go('/face-instruction');
       //! navigate to home screen if already registered...
          // GoRouter.of(context).go('/home');

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {

      Future.delayed(const Duration(seconds: 3), () {
        GoRouter.of(context).go('/face-instruction');
      });

      //? show the status bar...
      makeStatusBarTransparent();
    });

    return Scaffold(
      body: Center(
        child: Image.asset('assets/images/safe_her_hr_logo_rmbg.png'),
      ),
    );
  }
}
