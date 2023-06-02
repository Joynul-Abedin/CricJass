import 'package:cricjass/models/fixtures_entity.dart';
import 'package:flutter/material.dart';

class FixtureScoreBoardPagesTabView extends StatefulWidget {
  final FixturesData fixture;

  const FixtureScoreBoardPagesTabView({Key? key, required this.fixture})
      : super(key: key);

  @override
  FixtureScoreBoardPagesTabViewState createState() =>
      FixtureScoreBoardPagesTabViewState();
}

class FixtureScoreBoardPagesTabViewState
    extends State<FixtureScoreBoardPagesTabView> {
  @override
  Widget build(BuildContext context) {
    final localTeamBattingLineUp = widget.fixture.batting!
        .where((element) => element.teamId == widget.fixture.localteamId)
        .toList();
    final localTeamBowlingLineUp = widget.fixture.bowling!
        .where((element) => element.teamId == widget.fixture.localteamId)
        .toList();
    final visitorTeamBattingLineUp = widget.fixture.batting!
        .where((element) => element.teamId == widget.fixture.visitorteamId)
        .toList();
    final visitorTeamBowlingLineUp = widget.fixture.bowling!
        .where((element) => element.teamId == widget.fixture.visitorteamId)
        .toList();

    return Scaffold(
      body: Container(
        width: double.maxFinite,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          widget.fixture.localteam!.name!,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: localTeamBattingLineUp.length,
                      itemBuilder: (context, index) {
                        final player = widget.fixture.lineup
                            ?.where((element) =>
                                element.id ==
                                localTeamBattingLineUp[index].playerId)
                            .first;
                        final playerScore = localTeamBattingLineUp[index];
                        return ListTile(
                          title: Text(
                            player!.fullname!,
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            "Runs: ${playerScore.score} Balls: ${playerScore.ball} Fours: ${playerScore.fourX} Sixes: ${playerScore.sixX}",
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
