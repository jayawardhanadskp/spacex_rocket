import 'package:flutter/material.dart';
import 'package:spacex_rocket/data/rocket.dart';
import 'package:spacex_rocket/services/rocket_service.dart';

import '../components/rockets_list.dart';

class RocketList extends StatelessWidget {
  static const routeName = '/rocketList';
  const RocketList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rocket List'),
      ),
      body: FutureBuilder<List<Rocket>?>(
          future: RocketService.getRockets(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return const Text('Error!');
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator.adaptive());
            }

            List<Rocket>? rockets = snapshot.data;

            return Container(
              padding: const EdgeInsets.all(8),
              child:
                  rockets != null ? RocketsList(rockets: rockets) : Container(),
            );
          }),
    );
  }
}
