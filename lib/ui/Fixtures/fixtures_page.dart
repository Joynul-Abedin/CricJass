import 'dart:async';

import 'package:cricjass/models/fixtures_entity.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../services/api_service.dart';
import 'fixtures_item.dart';

class FixturesPage extends StatefulWidget {
  const FixturesPage({Key? key}) : super(key: key);

  @override
  State<FixturesPage> createState() => _FixturesPageState();
}

class _FixturesPageState extends State<FixturesPage>
    with TickerProviderStateMixin {
  late TabController _tabController;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 15, vsync: this, initialIndex: 7);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  String getDateForTabTitle(int diff) {
    DateTime currentDate = DateTime.now();
    DateTime nextDayDate = currentDate.add(Duration(days: diff));

    String formatDate(DateTime date) {
      return DateFormat('EEE dd').format(date);
    }

    bool isSameDay(DateTime date1, DateTime date2) {
      return date1.year == date2.year &&
          date1.month == date2.month &&
          date1.day == date2.day;
    }

    if (isSameDay(currentDate, nextDayDate)) {
      return 'Today';
    } else {
      return formatDate(nextDayDate);
    }
  }

  String getDateForGettingFixtureData(int diff) {
    DateTime currentDate = DateTime.now();
    DateTime nextDayDate = currentDate.add(Duration(days: diff));

    String formatDate(DateTime date) {
      return "${date.toIso8601String().substring(0, 10)}T00:00:00.000000Z,${date.toIso8601String().substring(0, 10)}T23:59:00.000000Z";
    }

    return diff == 0 ? formatDate(currentDate) : formatDate(nextDayDate);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          indicatorColor: Colors.blueGrey,
          tabs: [
            Tab(text: getDateForTabTitle(-7)),
            Tab(text: getDateForTabTitle(-6)),
            Tab(text: getDateForTabTitle(-5)),
            Tab(text: getDateForTabTitle(-4)),
            Tab(text: getDateForTabTitle(-3)),
            Tab(text: getDateForTabTitle(-2)),
            Tab(text: getDateForTabTitle(-1)),
            Tab(text: getDateForTabTitle(0)),
            Tab(text: getDateForTabTitle(1)),
            Tab(text: getDateForTabTitle(2)),
            Tab(text: getDateForTabTitle(3)),
            Tab(text: getDateForTabTitle(4)),
            Tab(text: getDateForTabTitle(5)),
            Tab(text: getDateForTabTitle(6)),
            Tab(text: getDateForTabTitle(7)),
          ],
        ),
        title: const Text('CricJass'),
        elevation: 10.0,
      ),
      body: Form(
        key: _formKey,
        child: TabBarView(
          controller: _tabController,
          children: [
            FixturesListTab(
              date: getDateForGettingFixtureData(-7),
            ),
            FixturesListTab(
              date: getDateForGettingFixtureData(-6),
            ),
            FixturesListTab(
              date: getDateForGettingFixtureData(-5),
            ),
            FixturesListTab(
              date: getDateForGettingFixtureData(-4),
            ),
            FixturesListTab(
              date: getDateForGettingFixtureData(-3),
            ),
            FixturesListTab(
              date: getDateForGettingFixtureData(-2),
            ),
            FixturesListTab(
              date: getDateForGettingFixtureData(-1),
            ),
            FixturesListTab(
              date: getDateForGettingFixtureData(0),
            ),
            FixturesListTab(
              date: getDateForGettingFixtureData(1),
            ),
            FixturesListTab(
              date: getDateForGettingFixtureData(2),
            ),
            FixturesListTab(
              date: getDateForGettingFixtureData(3),
            ),
            FixturesListTab(
              date: getDateForGettingFixtureData(4),
            ),
            FixturesListTab(
              date: getDateForGettingFixtureData(5),
            ),
            FixturesListTab(
              date: getDateForGettingFixtureData(6),
            ),
            FixturesListTab(
              date: getDateForGettingFixtureData(7),
            ),
          ],
        ),
      ),
    );
  }
}

// Assuming this is your widget class
class FixturesListTab extends StatefulWidget {
  final String date;

  FixturesListTab({super.key, required this.date});

  @override
  _FixturesListTabState createState() => _FixturesListTabState();
}

class _FixturesListTabState extends State<FixturesListTab> {
  Future<List<FixturesData>> fetchFixtures() async {
    try {
      final fixtures = await ApiService.instance.getFixtures(widget.date);
      return fixtures.take(10).toList();
    } catch (error) {
      throw Exception('Failed to connect to the server');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage('assets/images/background.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: FutureBuilder<List<FixturesData>>(
        future: fetchFixtures(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            // Data is available, display it in your widget
            final fixtures = snapshot.data!;
            // TODO: Build your widget using the fixtures data
            return FixtureItem(fixtures: fixtures);
          } else if (snapshot.hasError) {
            // Error occurred, handle it appropriately
            final error = snapshot.error.toString();
            return Text('Error: $error');
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
