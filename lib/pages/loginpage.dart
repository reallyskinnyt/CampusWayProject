import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  
  const LoginPage ({super.key});
  
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: const Text('Campus Way! Your way to your future!'),
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            const Text(
              'Welcome to Campus Way!',
              style: TextStyle(fontSize: 24),
            ),

            const Text(
              'Let us help you naviagate Campus',
              style: TextStyle(fontSize: 24),
            ),

            const SizedBox(height: 20),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // TODO: Implement login logic
                Navigator.pushNamed(context, '/home');
              },
              child: const Text('Login'),
            ),

            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/signup');
              },
              child: const Text('Create an account'),
            ),
          ],
        ),
      ),
       
    );
    
  }
  }
