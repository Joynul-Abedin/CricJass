import 'dart:async';

import 'package:cricjass/models/fixtures_entity.dart';
import 'package:cricjass/ui/fixtures_item.dart';
import 'package:flutter/material.dart';

import '../services/api_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //An aysnc function to get all fixtures of List<FixturesData> type from api_service.dart with try and catch blocks only first 10 fixtures from the response
  Future<List<FixturesData>> getAllFixtures() async {
    try {
      return await FixturesApiService().getFixtures();
    } catch (error) {
      throw Exception('Failed to connect to the server');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CricJass"),
      ),
      //tab bar view
      body: FutureBuilder<List<FixturesData>>(
        future: getAllFixtures(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return FixtureItem(fixtures: snapshot.data!);
          } else if (snapshot.hasError) {
            return Center(
              child: Text(snapshot.error.toString()),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
