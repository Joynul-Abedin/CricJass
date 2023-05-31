import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/fixtures_entity.dart';

class FixturesApiService {
  static const String baseUrl = 'https://cricket.sportmonks.com/api/v2.0';
  static const String fixturesUrl =
      '$baseUrl/fixtures?START=2023-01-15&END=2023-05-15&include=bowling,batting,visitorteam,localteam,lineup,venue,winnerteam,manofmatch,runs&sort=-starting_at&api_token=a1Ek7Br6sBZOPtdF1pSXLbHJNQg4ga8e987h3Lxlx85BjidY5TbJ7TK4XRi5';

  Future<List<FixturesData>> getFixtures() async {
    try {
      final response = await http.get(Uri.parse(fixturesUrl));
      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        final fixturesEntity = FixturesEntity.fromJson(jsonData);
        return fixturesEntity.data!;
      } else {
        throw Exception('Failed to load fixtures');
      }
    } catch (error) {
      throw Exception('Failed to connect to the server');
    }
  }
}
