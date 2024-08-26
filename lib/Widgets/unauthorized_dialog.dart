  import 'package:flutter/material.dart';

void showUnauthorizedDialog(context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Unauthorized'),
        content: Text('You have entered an invalid username or password'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              // Navigate to login page or perform other actions
            },
            child: Text('Login'),
          ),
        ],
      ),
    );
  }
