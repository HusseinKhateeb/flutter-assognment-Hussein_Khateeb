import 'package:flutter/material.dart';

class OutputScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
    final username = args != null ? args['username'] as String? : null;
    final password = args != null ? args['password'] as String? : null;
    final email = args != null ? args['email'] as String? : null;
    final rememberMe = args != null ? args['rememberMe'] as bool? : null;
    final gender = args != null ? args['gender'] as String? : null;
    final country = args != null ? args['country'] as String? : null;
    final age = args != null ? args['age'] as double? : null;
    final selectedDate = args != null ? args['selectedDate'] as DateTime? : null;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Output'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Username: $username'),
            Text('Password: $password'),
            Text('Email: $email'),
            Text('Remember Me: $rememberMe'),
            Text('Gender: $gender'),
            Text('Country: $country'),
            Text('Age: ${age?.round()}'),
            Text('Selected Date: ${selectedDate?.toLocal().toString().split(' ')[0] ?? 'Not selected'}'),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Go back to the form screen
              },
              child: const Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}