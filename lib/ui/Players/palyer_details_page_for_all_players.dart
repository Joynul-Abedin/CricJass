import 'package:cricjass/models/players_entity.dart';
import 'package:cricjass/ui/Players/batting_stats.dart';
import 'package:flutter/material.dart';

class PlayerDetails extends StatefulWidget {
  final PlayersData player;

  const PlayerDetails({Key? key, required this.player}) : super(key: key);

  @override
  State<PlayerDetails> createState() => _PlayerDetailsState();
}

class _PlayerDetailsState extends State<PlayerDetails> {
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
                        Tab(text: 'Batting Stats'),
                        Tab(text: 'Bowling Stats'),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    Expanded(
                      child: TabBarView(
                        children: [
                          // Tab 1 content

                          // Tab 2 content
                          const Center(
                            child: Text('Tab 2 Content'),
                          ),
                          PlayerBattingStats(playerCareer: player.career!),
                          const Center(
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
