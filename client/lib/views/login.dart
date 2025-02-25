import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  final void Function(int) setViewCallback;

  const LoginView({super.key, required this.setViewCallback});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Welcome to Retina!', style: TextStyle(fontSize: 30)),
        const SizedBox(height: 30),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Email',
            ),
          ),
        ),
        const SizedBox(height: 40),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Password',
            ),
          ),
        ),
        const SizedBox(height: 40),
        ElevatedButton(
          onPressed: () {
            widget.setViewCallback(1);
          },
          child: const Text('Login'),
        ),
      ],
    );
  }
}
