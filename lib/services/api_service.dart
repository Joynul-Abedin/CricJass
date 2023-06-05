import 'dart:convert';

import 'package:cricjass/models/players_entity.dart';
import 'package:http/http.dart' as http;

import '../models/fixtures_entity.dart';

class ApiService {
  static const String baseUrl = 'https://cricket.sportmonks.com/api/v2.0';
  static const String fixturesUrl =
      '$baseUrl/fixtures?include=bowling,batting,visitorteam,localteam,lineup,venue,winnerteam,manofmatch,scoreboards,league,referee,firstumpire,secondumpire,tvumpire,manofseries,tosswon,season,runs&sort=-starting_at&api_token=a1Ek7Br6sBZOPtdF1pSXLbHJNQg4ga8e987h3Lxlx85BjidY5TbJ7TK4XRi5';

  static ApiService? _instance;

  static ApiService get instance {
    _instance ??= ApiService._();
    return _instance!;
  }

  ApiService._();

  List<FixturesData>? cachedFixtures; // Cached fixtures data
  List<PlayersData>? cachedPlayers; // Cached fixtures data

  Future<List<FixturesData>> getFixtures(String date) async {
    if (cachedFixtures != null) {
      // Return cached data if available
      return cachedFixtures!;
    }
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

  Future<List<PlayersData>> getAllPlayers() async {
    if (cachedPlayers != null) {
      // Return cached data if available
      return cachedPlayers!;
    }
    const url =
        '$baseUrl/players?include=country&api_token=a1Ek7Br6sBZOPtdF1pSXLbHJNQg4ga8e987h3Lxlx85BjidY5TbJ7TK4XRi5';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final List<PlayersData> players = [];
      final Map<String, dynamic> responseData = jsonDecode(response.body);
      final List<dynamic> playersList = responseData['data'];
      playersList.forEach((player) {
        players.add(PlayersData.fromJson(player));
      });
      // Cache the fetched fixtures data
      cachedPlayers = players;
      return players;
    } else {
      throw Exception('Failed to load fixtures');
    }
  }

  Future<List<PlayersDataCareer>> getAllPlayerByID(int playerId) async {
    final url =
        '$baseUrl/players/$playerId?include=career&api_token=a1Ek7Br6sBZOPtdF1pSXLbHJNQg4ga8e987h3Lxlx85BjidY5TbJ7TK4XRi5';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final List<PlayersDataCareer> players = [];
      final Map<String, dynamic> responseData = jsonDecode(response.body);
      final dynamic data = responseData['data'];
      final List<dynamic> careerList = data['career'];

      careerList.forEach((career) {
        players.add(PlayersDataCareer.fromJson(career));
      });

      return players;
    } else {
      throw Exception('Failed to load player details');
    }
  }
}
