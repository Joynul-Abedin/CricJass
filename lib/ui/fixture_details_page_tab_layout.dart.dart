import 'package:cricjass/models/fixtures_entity.dart';
import 'package:flutter/material.dart';

class FixtureDetailsPagesTabView extends StatefulWidget {
  final FixturesData fixture;

  const FixtureDetailsPagesTabView({Key? key, required this.fixture})
      : super(key: key);
  @override
  FixtureDetailsPagesTabViewState createState() =>
      FixtureDetailsPagesTabViewState();
}

class FixtureDetailsPagesTabViewState extends State<FixtureDetailsPagesTabView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this, initialIndex: 1);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Column(
              children: [
                Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Match Details"),
                    )),
              ],
            ),
            Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text("Match Stats"),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
