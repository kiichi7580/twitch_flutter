import 'package:flutter/material.dart';
import 'package:twitch_flutter/resource/auth_methods.dart';
import 'package:twitch_flutter/screens/home_screen.dart';
import 'package:twitch_flutter/widgets/custom_button.dart';
import 'package:twitch_flutter/widgets/custom_textfield.dart';

class SignupScreen extends StatefulWidget {
  static const String routeName = '/signup';
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    void signUpUser() async {
      bool res = await AuthMethods().signUpUser(
        context,
        _emailController.text,
        _passwordController.text,
        _usernameController.text,
      );
      if (res == true) {
        Navigator.pushNamed(context, HomeScreen.routeName);
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 18,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.1,
              ),
              const Text(
                'Email',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                ),
                child: CustomTextField(
                  controller: _emailController,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'password',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                ),
                child: CustomTextField(
                  controller: _passwordController,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'username',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                ),
                child: CustomTextField(
                  controller: _usernameController,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                text: 'Sign Up',
                onTap: () {
                  signUpUser();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
