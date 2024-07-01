import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:spacex_rocket/config.dart';

import '../data/rocket.dart';

class RocketService {
  // get one rocekt
  static Future<Rocket?> getRocket() async {
    final response = await http.get(
        Uri.parse("${Config.BACKEND_URL}rockets/5e9d0d96eda699382d09d1ee"));

    if (response.statusCode == 200) {
      return Rocket.fromJSON(jsonDecode(response.body));
    }
    return null;
  }

  // get rocket list
  static Future<List<Rocket>?> getRockets() async {
    final response = await http.get(Uri.parse("${Config.BACKEND_URL}rockets"));

    if (response.statusCode == 200) {
      // get all list and map
      return jsonDecode(response.body).map<Rocket>((data) {
        // return 1 rocket
        return Rocket.fromJSON(data);
      }).toList();
    }
    return null;
  }
}
