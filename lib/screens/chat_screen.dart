import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.onSecondary,
            title: const Text('Baat'),
            actions: [
              IconButton(
                icon: Icon(Icons.logout, color: Theme.of(context).colorScheme.primary),
                onPressed: () {
                  FirebaseAuth.instance.signOut();
                },
              )
            ],
          ),
          body: const Center(
            child: Text('Logged In'),
          ),
        ),
      ),
    );
  }
}
