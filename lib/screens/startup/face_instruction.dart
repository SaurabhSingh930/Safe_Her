import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:safe_her/components/ui_components/button/elevated_button.dart';

class FaceInstruction extends StatelessWidget {
  const FaceInstruction({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'Add Face Data',
                style: TextStyle(
                    fontSize: 39,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Suse'),
              ),
              Image.asset(
                "assets/images/face_recognition.gif",
                scale: 0.7,
              ),
              SizedBox(
                width: screenWidth * 0.7,
                child: const Text(
                  "Make sure your face is clearly visible and is not covered with any object. Your face should be well lit as well.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Kanit',
                  ),
                ),
              ),
              SizedBox(
                width: screenWidth * 0.7,
                child: const Text(
                  "We do not share any of you data with anyone. Your data is safe with us. We use it only for security purposes.",
                ),
              ),
              SizedBox(
                width: screenWidth * 0.8,
                height: 60,
                child: SElevatedButton(
                  buttonText: "Proceed",
                  onPressed: () {
                    GoRouter.of(context).push('/face-capture');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
