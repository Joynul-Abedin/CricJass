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
  bool showLocalTeamData = true;
  bool showVisitorTeamData = false;

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

    const textStyle = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
    );

    return Scaffold(
      body: Container(
        width: double.maxFinite,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        showLocalTeamData = true;
                        showVisitorTeamData = false;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: showLocalTeamData ? Colors.grey[300] : null,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          widget.fixture.localteam!.name!,
                          style: const TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        showLocalTeamData = false;
                        showVisitorTeamData = true;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: showVisitorTeamData ? Colors.grey[300] : null,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          widget.fixture.visitorteam!.name!,
                          style: const TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              //Local Team Batting and Bowling
              if (showLocalTeamData)
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        DataTable(
                          columns: const [
                            //make the column width fixed
                            DataColumn(
                                label: Text('Batsman', style: textStyle)),
                            DataColumn(label: Text('R', style: textStyle)),
                            DataColumn(label: Text('B', style: textStyle)),
                            DataColumn(label: Text('4s', style: textStyle)),
                            DataColumn(label: Text('6s', style: textStyle)),
                            DataColumn(label: Text('SR', style: textStyle)),
                          ],
                          rows: localTeamBattingLineUp.map((playerScore) {
                            final player = widget.fixture.lineup
                                ?.where((element) =>
                                    element.id == playerScore.playerId)
                                .first;
                            return DataRow(cells: [
                              DataCell(Text(player!.fullname!)),
                              DataCell(Text(playerScore.score.toString())),
                              DataCell(Text(playerScore.ball.toString())),
                              DataCell(Text(playerScore.fourX.toString())),
                              DataCell(Text(playerScore.sixX.toString())),
                              DataCell(Text(playerScore.rate.toString())),
                            ]);
                          }).toList(),
                        ),
                        DataTable(
                          columns: const [
                            DataColumn(label: Text('Bowler', style: textStyle)),
                            DataColumn(label: Text('O', style: textStyle)),
                            DataColumn(label: Text('M', style: textStyle)),
                            DataColumn(label: Text('R', style: textStyle)),
                            DataColumn(label: Text('W', style: textStyle)),
                            DataColumn(label: Text('ER', style: textStyle)),
                          ],
                          rows: localTeamBowlingLineUp.map((playerScore) {
                            final player = widget.fixture.lineup
                                ?.where((element) =>
                                    element.id == playerScore.playerId)
                                .first;
                            return DataRow(cells: [
                              DataCell(Text(player!.fullname!)),
                              DataCell(Text(playerScore.overs.toString())),
                              DataCell(Text(playerScore.medians.toString())),
                              DataCell(Text(playerScore.runs.toString())),
                              DataCell(Text(playerScore.wickets.toString())),
                              DataCell(Text(playerScore.rate.toString())),
                            ]);
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                ),

              //Visitor Team Batting and Bowling
              if (showVisitorTeamData)
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        DataTable(
                          columns: const [
                            DataColumn(
                                label: Text('Batsman', style: textStyle)),
                            DataColumn(label: Text('R', style: textStyle)),
                            DataColumn(label: Text('B', style: textStyle)),
                            DataColumn(label: Text('4s', style: textStyle)),
                            DataColumn(label: Text('6s', style: textStyle)),
                            DataColumn(label: Text('SR', style: textStyle)),
                          ],
                          rows: visitorTeamBattingLineUp.map((playerScore) {
                            final player = widget.fixture.lineup
                                ?.where((element) =>
                                    element.id == playerScore.playerId)
                                .first;
                            return DataRow(cells: [
                              DataCell(Text(player!.fullname!)),
                              DataCell(Text(playerScore.score.toString())),
                              DataCell(Text(playerScore.ball.toString())),
                              DataCell(Text(playerScore.fourX.toString())),
                              DataCell(Text(playerScore.sixX.toString())),
                              DataCell(Text(playerScore.rate.toString())),
                            ]);
                          }).toList(),
                        ),
                        DataTable(
                          columns: const [
                            DataColumn(label: Text('Bowler', style: textStyle)),
                            DataColumn(label: Text('O', style: textStyle)),
                            DataColumn(label: Text('M', style: textStyle)),
                            DataColumn(label: Text('R', style: textStyle)),
                            DataColumn(label: Text('W', style: textStyle)),
                            DataColumn(label: Text('ER', style: textStyle)),
                          ],
                          rows: visitorTeamBowlingLineUp.map((playerScore) {
                            final player = widget.fixture.lineup
                                ?.where((element) =>
                                    element.id == playerScore.playerId)
                                .first;
                            return DataRow(cells: [
                              DataCell(Text(player!.fullname!)),
                              DataCell(Text(playerScore.overs.toString())),
                              DataCell(Text(playerScore.medians.toString())),
                              DataCell(Text(playerScore.runs.toString())),
                              DataCell(Text(playerScore.wickets.toString())),
                              DataCell(Text(playerScore.rate.toString())),
                            ]);
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
