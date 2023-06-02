import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/fixtures_entity.dart';

class FixturesApiService {
  static const String baseUrl = 'https://cricket.sportmonks.com/api/v2.0';
  static const String fixturesUrl =
      '$baseUrl/fixtures?include=bowling,batting,visitorteam,localteam,lineup,venue,winnerteam,manofmatch,scoreboards,league,referee,firstumpire,secondumpire,tvumpire,manofseries,tosswon,season,runs&sort=-starting_at&api_token=a1Ek7Br6sBZOPtdF1pSXLbHJNQg4ga8e987h3Lxlx85BjidY5TbJ7TK4XRi5';

  static FixturesApiService? _instance;

  static FixturesApiService get instance {
    _instance ??= FixturesApiService._();
    return _instance!;
  }

  FixturesApiService._();

  List<FixturesData>? cachedFixtures; // Cached fixtures data

  Future<List<FixturesData>> getFixtures(String date) async {
    if (cachedFixtures != null) {
      // Return cached data if available
      return cachedFixtures!;
    }

    print(date);
    const url =
        '$fixturesUrl&filter[starts_between]=2023-01-01T00:00:00.000000Z,2023-01-01T23:59:00.000000Z';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final List<FixturesData> fixtures = [];
      final Map<String, dynamic> responseData = jsonDecode(response.body);
      final List<dynamic> fixturesList = responseData['data'];
      fixturesList.forEach((fixture) {
        fixtures.add(FixturesData.fromJson(fixture));
      });

      // Cache the fetched fixtures data
      cachedFixtures = fixtures;

      return fixtures;
    } else {
      throw Exception('Failed to load fixtures');
    }
  }
}
