import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/fixtures_entity.dart';

class FixturesApiService {
  static const String baseUrl = 'https://cricket.sportmonks.com/api/v2.0';
  static const String fixturesUrl =
      '$baseUrl/fixtures?START=2023-01-15&END=2023-05-15&include=bowling,batting,visitorteam,localteam,lineup,venue,winnerteam,manofmatch,runs&sort=-starting_at&api_token=a1Ek7Br6sBZOPtdF1pSXLbHJNQg4ga8e987h3Lxlx85BjidY5TbJ7TK4XRi5';

  //make a list of FixturesData type and return it also ccatch the list for the whole instance and dispose the list while the app instance is closed

  Future<List<FixturesData>> getFixtures() async {
    final response = await http.get(Uri.parse(fixturesUrl));
    if (response.statusCode == 200) {
      final List<FixturesData> fixtures = [];
      final Map<String, dynamic> responseData = jsonDecode(response.body);
      final List<dynamic> fixturesList = responseData['data'];
      fixturesList.forEach((fixture) {
        fixtures.add(FixturesData.fromJson(fixture));
      });
      return fixtures;
    } else {
      throw Exception('Failed to load fixtures');
    }
  }
}
