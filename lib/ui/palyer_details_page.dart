import 'package:cricjass/models/fixtures_entity.dart';
import 'package:flutter/material.dart';

class PlayerDetailsWidget extends StatefulWidget {
  final FixturesDataLineup player;

  const PlayerDetailsWidget({Key? key, required this.player}) : super(key: key);

  @override
  State<PlayerDetailsWidget> createState() => _PlayerDetailsWidgetState();
}

class _PlayerDetailsWidgetState extends State<PlayerDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    final player = widget.player!;
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
                  Column(
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
                  Image(
                    image: NetworkImage(player.imagePath!),
                  ),
                ],
              ),
            ),
            const Expanded(
              child: DefaultTabController(
                length: 2,
                child: Column(
                  children: [
                    TabBar(
                      tabs: [
                        Tab(text: 'Player Info'),
                        Tab(text: 'Player ScoreBoard'),
                      ],
                    ),
                    SizedBox(height: 16.0),
                    Expanded(
                      child: TabBarView(
                        children: [
                          // Tab 1 content
                          Center(
                            child: Text('Tab 1 Content'),
                          ),
                          // Tab 2 content
                          Center(
                            child: Text('Tab 2 Content'),
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
