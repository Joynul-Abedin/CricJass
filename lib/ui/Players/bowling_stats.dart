import 'package:collection/collection.dart';
import 'package:cricjass/models/players_entity.dart';
import 'package:flutter/material.dart';

import '../../models/bowling_data_table_class.dart';

class PlayerBowlingStats extends StatefulWidget {
  final List<PlayersDataCareer> playerCareer;

  const PlayerBowlingStats({Key? key, required this.playerCareer})
      : super(key: key);

  @override
  State<PlayerBowlingStats> createState() => _PlayerBowlingStatsState();
}

class _PlayerBowlingStatsState extends State<PlayerBowlingStats> {
  static const textStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    List<BowlingStats> bowlingStats = widget.playerCareer
        .where((playerData) => playerData.bowling != null)
        .map((playerData) {
      final matches = playerData.bowling!.matches!;
      final overs = playerData.bowling!.overs!;
      final innings = playerData.bowling!.innings!;
      final average = playerData.bowling!.average!;
      final economyRate = playerData.bowling!.econRate!;
      final runs = playerData.bowling!.runs!;
      final wickets = playerData.bowling!.wickets!;
      final wide = playerData.bowling!.wide!;
      final noBall = playerData.bowling!.noball!;
      final strikeRate = playerData.bowling!.strikeRate!;
      final fourWickets = playerData.bowling!.fourWickets!;
      final fiveWickets = playerData.bowling!.fiveWickets!;
      final tenWickets = playerData.bowling!.tenWickets!;
      final rate = playerData.bowling!.rate!;

      return BowlingStats(
        format: playerData.type!,
        matches: matches,
        overs: overs,
        innings: innings,
        average: average,
        economyRate: economyRate,
        runs: runs,
        wickets: wickets,
        wide: wide,
        noBall: noBall,
        strikeRate: strikeRate,
        fourWickets: fourWickets,
        fiveWickets: fiveWickets,
        tenWickets: tenWickets,
        rate: rate,
      );
    }).toList();

    List<BowlingStats> averagedBowlingStats = [];

    var bowlingFormatGroups =
        groupBy(bowlingStats, (BowlingStats stat) => stat.format);
    bowlingFormatGroups.entries.forEach((entry) {
      String format = entry.key;
      List<BowlingStats> stats = entry.value;
      int totalMatches = stats.fold(0, (sum, stat) => sum + stat.matches);
      double totalOvers = stats.fold(0.0, (sum, stat) => sum + stat.overs);
      int totalInnings = stats.fold(0, (sum, stat) => sum + stat.innings);
      double averageAverage =
          stats.fold(0.0, (sum, stat) => sum + stat.average) / stats.length;
      double averageEconomyRate =
          stats.fold(0.0, (sum, stat) => sum + stat.economyRate) / stats.length;
      int totalRuns = stats.fold(0, (sum, stat) => sum + stat.runs);
      int totalWickets = stats.fold(0, (sum, stat) => sum + stat.wickets);
      int totalWide = stats.fold(0, (sum, stat) => sum + stat.wide);
      int totalNoBall = stats.fold(0, (sum, stat) => sum + stat.noBall);
      double averageStrikeRate =
          stats.fold(0.0, (sum, stat) => sum + stat.strikeRate) / stats.length;
      int totalFourWickets =
          stats.fold(0, (sum, stat) => sum + stat.fourWickets);
      int totalFiveWickets =
          stats.fold(0, (sum, stat) => sum + stat.fiveWickets);
      int totalTenWickets = stats.fold(0, (sum, stat) => sum + stat.tenWickets);
      double averageRate =
          stats.fold(0.0, (sum, stat) => sum + stat.rate) / stats.length;

      averagedBowlingStats.add(
        BowlingStats(
          format: format,
          matches: totalMatches,
          overs: totalOvers,
          innings: totalInnings,
          average: averageAverage,
          economyRate: averageEconomyRate,
          runs: totalRuns,
          wickets: totalWickets,
          wide: totalWide,
          noBall: totalNoBall,
          strikeRate: averageStrikeRate,
          fourWickets: totalFourWickets,
          fiveWickets: totalFiveWickets,
          tenWickets: totalTenWickets,
          rate: averageRate,
        ),
      );
    });

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Bowling Stats',
                style: textStyle,
              ),
              DataTable(
                columns: [
                  DataColumn(
                    label: Text('Format'),
                  ),
                  DataColumn(
                    label: Text('Matches'),
                  ),
                  DataColumn(
                    label: Text('Overs'),
                  ),
                  DataColumn(
                    label: Text('Innings'),
                  ),
                  DataColumn(
                    label: Text('Average'),
                  ),
                  DataColumn(
                    label: Text('Economy Rate'),
                  ),
                  DataColumn(
                    label: Text('Runs'),
                  ),
                  DataColumn(
                    label: Text('Wickets'),
                  ),
                  DataColumn(
                    label: Text('Wide'),
                  ),
                  DataColumn(
                    label: Text('No Ball'),
                  ),
                  DataColumn(
                    label: Text('Strike Rate'),
                  ),
                  DataColumn(
                    label: Text('4 Wickets'),
                  ),
                  DataColumn(
                    label: Text('5 Wickets'),
                  ),
                  DataColumn(
                    label: Text('10 Wickets'),
                  ),
                  DataColumn(
                    label: Text('Rate'),
                  ),
                ],
                rows: averagedBowlingStats
                    .map((stat) => DataRow(
                          cells: [
                            DataCell(Text(stat.format)),
                            DataCell(Text(stat.matches.toString())),
                            DataCell(Text(stat.overs.toString())),
                            DataCell(Text(stat.innings.toString())),
                            DataCell(Text(stat.average.toStringAsFixed(2))),
                            DataCell(Text(stat.economyRate.toStringAsFixed(2))),
                            DataCell(Text(stat.runs.toString())),
                            DataCell(Text(stat.wickets.toString())),
                            DataCell(Text(stat.wide.toString())),
                            DataCell(Text(stat.noBall.toString())),
                            DataCell(Text(stat.strikeRate.toStringAsFixed(2))),
                            DataCell(Text(stat.fourWickets.toString())),
                            DataCell(Text(stat.fiveWickets.toString())),
                            DataCell(Text(stat.tenWickets.toString())),
                            DataCell(Text(stat.rate.toStringAsFixed(2))),
                          ],
                        ))
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
