import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Greeting App'),
        ),
        body: const GreetingWidget(),
      ),
    );
  }
}

class GreetingWidget extends StatelessWidget {
  const GreetingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Hello, World!',
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 12,),
          const Text(
            'Welcome to Flutter!',
            style: TextStyle(fontSize: 18),
          ),
          Image.network(
            'https://inapp.com/wp-content/uploads/elementor/thumbs/flutter-01-q05qfmgj1grd0orkrjl3b1f29o2o5k4r823e0ourwy.png', // Add your image URL here
            height: 150,
            width: 150,
          ),
          const SizedBox(height: 20),
          // Button with green color
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Button Pressed!'),
                ),
              );
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            child: const Text('Press Me'),
          ),
        ],
      ),
    );
  }
}
