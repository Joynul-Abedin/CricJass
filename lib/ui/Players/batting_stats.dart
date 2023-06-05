import 'package:collection/collection.dart';
import 'package:cricjass/models/players_entity.dart';
import 'package:flutter/material.dart';

import '../../models/bating_data_table_class.dart';

class PlayerBattingStats extends StatefulWidget {
  final List<PlayersDataCareer> playerCareer;

  const PlayerBattingStats({Key? key, required this.playerCareer})
      : super(key: key);

  @override
  State<PlayerBattingStats> createState() => _PlayerBattingStatsState();
}

class _PlayerBattingStatsState extends State<PlayerBattingStats> {
  static const textStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    List<BattingStats> battingStats = widget.playerCareer.map((playerData) {
      final matches = playerData.batting!.matches!;
      final innings = playerData.batting!.innings!;
      final runs = playerData.batting!.runsScored!;
      final highestScore = playerData.batting!.highestInningScore!;
      final strikeRate = playerData.batting!.strikeRate!;
      final average = playerData.batting!.average!;
      final fours = playerData.batting!.fourX!;
      final sixes = playerData.batting!.sixX!;

      return BattingStats(
        format: playerData.type!,
        matches: matches,
        innings: innings,
        runs: runs,
        highestScore: highestScore,
        strikeRate: strikeRate,
        average: average,
        fours: fours,
        sixes: sixes,
      );
    }).toList();

    List<BattingStats> averagedStats = [];

    var formatGroups =
        groupBy(battingStats, (BattingStats stat) => stat.format);
    formatGroups.entries.forEach((entry) {
      String? format = entry.key;
      List<BattingStats> stats = entry.value;
      int totalMatches =
          stats.fold(0, (sum, stat) => sum + (stat.matches ?? 0));
      int totalRuns = stats.fold(0, (sum, stat) => sum + (stat.runs ?? 0));
      int totalInnings =
          stats.fold(0, (sum, stat) => sum + (stat.innings ?? 0));
      double averageRuns = totalRuns / totalInnings;
      double averageStrikeRate =
          stats.fold(0.0, (sum, stat) => sum + (stat.strikeRate ?? 0)) /
              stats.length;
      double averageAverage =
          stats.fold(0.0, (sum, stat) => sum + (stat.average ?? 0)) /
              stats.length;
      int totalFours = stats.fold(0, (sum, stat) => sum + (stat.fours ?? 0));
      int totalSixes = stats.fold(0, (sum, stat) => sum + (stat.sixes ?? 0));

      averagedStats.add(
        BattingStats(
          format: format,
          matches: totalMatches,
          innings: totalInnings,
          runs: totalRuns,
          highestScore: stats
              .map((stat) => stat.highestScore)
              .reduce((a, b) => a! > b! ? a : b),
          strikeRate: averageStrikeRate,
          average: averageAverage,
          fours: totalFours,
          sixes: totalSixes,
        ),
      );
    });

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              DataTable(
                columns: const [
                  DataColumn(label: Text('Batting', style: textStyle)),
                  DataColumn(label: Text('Matches', style: textStyle)),
                  DataColumn(label: Text('Innings', style: textStyle)),
                  DataColumn(label: Text('Balls', style: textStyle)),
                  DataColumn(label: Text('Runs', style: textStyle)),
                  DataColumn(label: Text('Highest', style: textStyle)),
                  DataColumn(label: Text('Average', style: textStyle)),
                  DataColumn(label: Text('SR', style: textStyle)),
                  DataColumn(label: Text('Fours', style: textStyle)),
                  DataColumn(label: Text('Sixes', style: textStyle)),
                ],
                rows: averagedStats.map((stats) {
                  return DataRow(cells: [
                    DataCell(Text(stats.format ?? "")),
                    DataCell(Text(stats.matches.toString())),
                    DataCell(Text(stats.innings.toString())),
                    DataCell(Text('-')), // Placeholder for Balls
                    DataCell(Text(stats.runs.toString())),
                    DataCell(Text(stats.highestScore.toString())),
                    DataCell(Text(
                        stats.average.toStringAsFixed(2).toString() ?? "")),
                    DataCell(Text(stats.strikeRate.toStringAsFixed(2))),
                    DataCell(Text(stats.fours.toString())),
                    DataCell(Text(stats.sixes.toString())),
                  ]);
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
