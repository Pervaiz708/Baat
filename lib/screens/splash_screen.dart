import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

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
                icon: const Icon(Icons.logout),
                onPressed: () {},
              )
            ],
          ),
          body: const Center(
            child: Text('Loading...'),
          ),
        ),
      ),
    );
  }
}
