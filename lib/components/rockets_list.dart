import 'package:flutter/material.dart';

import '../data/rocket.dart';

class RocketsList extends StatelessWidget {
  late final List<Rocket> rockets;

  RocketsList({super.key, required this.rockets});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: rockets.length,
        itemBuilder: (context, index) {
          Rocket rocket = rockets[index];

          return Card(
            child: ListTile(
              title: Text(
                rocket.name,
                style: const TextStyle(fontSize: 23),
              ),
              subtitle: Text(
                rocket.firstFlight,
                style: const TextStyle(fontSize: 16),
              ),
            ),
          );
        });
  }
}
