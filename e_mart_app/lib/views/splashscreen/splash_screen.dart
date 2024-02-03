import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login Screen',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(20, 100, 20, 2),
        child: Column(
          children: [
            Icon(
              Icons.person_add_rounded,
              size: 120,
              ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Email',
                hintText: 'Enter your email',
                icon: Icon(Icons.email),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
                hintText: 'Enter your password',
                icon: Icon(Icons.lock),
              ),
            ),
            SizedBox(height: 40),
            Raised(onPressed: (){}, child: ,),
          ],
        ),
      ),
    );
  }
}
