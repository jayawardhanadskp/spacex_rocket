import 'package:flutter/material.dart';
import 'package:spacex_rocket/pages/rocket_list.dart';
import 'package:spacex_rocket/pages/rocket_page.dart';
import 'package:spacex_rocket/widgets/button.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/homePage';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Button(
              onTap: () => Navigator.of(context).pushNamed(RocketPage.routeName),
              buttonText: 'SHOW ROCKET',
              buttonHeight: 50,
              buttonWidth: 250,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Button(
            onTap: () => Navigator.of(context).pushNamed(RocketList.routeName),
            buttonText: 'SHOW ROCKET LIST',
            buttonHeight: 50,
            buttonWidth: 250,
          )
        ],
      ),
    );
  }
}
