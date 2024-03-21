import 'package:flutter/material.dart';
import 'package:twitch_flutter/screens/login_screen.dart';
import 'package:twitch_flutter/screens/signup_screen.dart';
import 'package:twitch_flutter/utils/colors.dart';
import 'package:twitch_flutter/widgets/custom_button.dart';

class OnBoardingScreen extends StatelessWidget {
  static const routeName = '/onboarding';
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 18,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to \n Twitch',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomButton(
                onTap: () {
                  Navigator.pushNamed(context, LoginScreen.routeName);
                },
                text: 'Log In',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomButton(
                onTap: () {
                  Navigator.pushNamed(context, SignupScreen.routeName);
                },
                text: 'Sign Up',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
