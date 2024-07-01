import 'package:flutter/material.dart';
import 'package:spacex_rocket/data/rocket.dart';
import 'package:spacex_rocket/services/rocket_service.dart';

class RocketArguments {
  final Rocket rocket;

  RocketArguments({required this.rocket});
}

class RocketPage extends StatelessWidget {
  static const routeName = '/rocketPage';
  const RocketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Rocket'),
          centerTitle: true,
        ),
        body: FutureBuilder<Rocket?>(
          future: RocketService.getRocket(),
          builder: (BuildContext context, AsyncSnapshot<Rocket?> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator.adaptive());
            } else if (snapshot.hasError) {
              return Center(child: Text(snapshot.error.toString()));
            }
            Rocket? rocket = snapshot.data;

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  width: double.infinity,
                ),
                Text(
                  rocket?.name ?? '',
                  style: const TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  rocket?.description ?? '',
                  style: const TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  rocket?.firstFlight ?? '',
                  style: const TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                Image.network(rocket?.image ?? '')
              ],
            );
          },
        ));
  }
}
