import 'package:cricjass/models/fixtures_entity.dart';
import 'package:cricjass/models/players_entity.dart';
import 'package:cricjass/ui/Players/batting_stats.dart';
import 'package:cricjass/ui/Players/bowling_stats.dart';
import 'package:flutter/material.dart';

import '../../services/api_service.dart';

class PlayerDetailsWidget extends StatefulWidget {
  final FixturesDataLineup player;

  const PlayerDetailsWidget({Key? key, required this.player}) : super(key: key);

  @override
  State<PlayerDetailsWidget> createState() => _PlayerDetailsWidgetState();
}

class _PlayerDetailsWidgetState extends State<PlayerDetailsWidget> {
  Future<List<PlayersDataCareer>> fetchPlayer() async {
    try {
      final career =
          await ApiService.instance.getAllPlayerByID(widget.player.id!);
      return career;
    } catch (error) {
      throw Exception('Failed to connect to the server');
    }
  }

  @override
  Widget build(BuildContext context) {
    final player = widget.player;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text('Player Details'),
      ),
      body: Container(
        width: double.maxFinite,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          player.fullname!,
                          style: const TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          player.position!.name!,
                          style: const TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          player.countryId!.toString(),
                          style: const TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Image(
                      image: NetworkImage(player.imagePath!),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: DefaultTabController(
                length: 3,
                child: Column(
                  children: [
                    const TabBar(
                      tabs: [
                        Tab(text: 'Player Info'),
                        Tab(text: 'Batting'),
                        Tab(text: 'Bowling'),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    Expanded(
                      child: TabBarView(
                        children: [
                          const Center(
                            child: Text('Tab 1 Content'),
                          ),
                          FutureBuilder<List<PlayersDataCareer>>(
                            future: fetchPlayer(),
                            builder: (context, snapshot) {
                              if (snapshot.hasData) {
                                // Data is available, display it in your widget
                                final career = snapshot.data!;
                                // TODO: Build your widget using the fixtures data
                                return PlayerBattingStats(playerCareer: career);
                              } else if (snapshot.hasError) {
                                // Error occurred, handle it appropriately
                                final error = snapshot.error.toString();
                                return Text('Error: $error');
                              } else {
                                return const Center(
                                    child: CircularProgressIndicator());
                              }
                            },
                          ),
                          FutureBuilder<List<PlayersDataCareer>>(
                            future: fetchPlayer(),
                            builder: (context, snapshot) {
                              if (snapshot.hasData) {
                                // Data is available, display it in your widget
                                final career = snapshot.data!;
                                // TODO: Build your widget using the fixtures data
                                return PlayerBowlingStats(playerCareer: career);
                              } else if (snapshot.hasError) {
                                // Error occurred, handle it appropriately
                                final error = snapshot.error.toString();
                                return Text('Error: $error');
                              } else {
                                return const Center(
                                    child: CircularProgressIndicator());
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
