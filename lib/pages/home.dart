import 'package:flutter/material.dart';
import 'package:spacex_rocket/pages/rocket_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const RocketPage()));
          },
          child: const Text('SHOW ROCKET'),
        ),
      ),
    );
  }
}
