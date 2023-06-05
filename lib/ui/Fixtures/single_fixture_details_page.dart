import 'package:flutter/material.dart';

import '../../Utils/utils.dart';
import '../../models/fixtures_entity.dart';
import 'fixture_details_page_tab_layout.dart.dart';
import 'fixture_player_list_tab_layout.dart';
import 'fixture_scoreboard_page_tab_layout.dart.dart';

class SingleFixtureDetailsPage extends StatefulWidget {
  final FixturesData fixture;

  const SingleFixtureDetailsPage({Key? key, required this.fixture})
      : super(key: key);

  @override
  State<SingleFixtureDetailsPage> createState() =>
      _SingleFixtureDetailsPageState();
}

class _SingleFixtureDetailsPageState extends State<SingleFixtureDetailsPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
        length: 3,
        vsync: this); // Change the length to the number of tabs you want
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final fixture = widget.fixture;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(widget.fixture.round!),
      ),
      body: Container(
        width: double.maxFinite,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            children: [
              Card(
                elevation: 8,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                              fixture.status! == "NS"
                                  ? "Not Started"
                                  : fixture.status!,
                              style: const TextStyle(
                                fontSize: 16,
                                // Adjust the font size as needed
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                              )),
                          Text(Utils().formatDate(fixture.startingAt!),
                              style: const TextStyle(
                                fontSize: 16,
                                // Adjust the font size as needed
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                              )),
                          Text(
                            fixture.round!,
                            style: const TextStyle(
                              fontSize: 16,
                              // Adjust the font size as needed
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 8.0, bottom: 8.0, right: 8.0),
                                  child: Image(
                                    height: 100,
                                    width: 70,
                                    image: NetworkImage(
                                      fixture.localteam!.imagePath!,
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          SizedBox(
                                            width: 80,
                                            child: Text(
                                              fixture.localteam!.name!,
                                              style: const TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                fontStyle: FontStyle.italic,
                                              ),
                                              textAlign: TextAlign.start,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          if (fixture.runs != null &&
                                              fixture.runs!.isNotEmpty &&
                                              fixture.runs!.isNotEmpty)
                                            Text(
                                              "${fixture.runs![0].score}/${fixture.runs![0].wickets} (${fixture.runs![0].overs})",
                                              style: const TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                fontStyle: FontStyle.italic,
                                              ),
                                            ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Column(
                          children: [Icon(Icons.swap_horizontal_circle)],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        width: 80,
                                        child: Text(
                                          fixture.visitorteam!.name!,
                                          style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.italic,
                                          ),
                                          textAlign: TextAlign.end,
                                        ),
                                      ),
                                      if (fixture.runs != null &&
                                          fixture.runs!.isNotEmpty &&
                                          fixture.runs!.length >= 2)
                                        Text(
                                          "${fixture.runs![1].score}/${fixture.runs![1].wickets} (${fixture.runs![1].overs})",
                                          style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.italic,
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 8.0, bottom: 8.0, left: 8.0),
                                  child: Image(
                                    height: 100,
                                    width: 70,
                                    image: NetworkImage(
                                      fixture.visitorteam!.imagePath!,
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // container with tab layout for match details and commentary and also with scoreboards
              TabBar(
                controller: _tabController,
                tabs: const [
                  Tab(text: 'Match Details'),
                  Tab(text: 'Players'),
                  Tab(text: 'ScoreBoard'),
                  // Add more tabs as needed
                ],
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    // Match Details Tab Content
                    FixtureDetailsPagesTabView(
                      fixture: widget.fixture,
                    ),
                    FixturePlayerListPagesTabView(
                      fixture: widget.fixture,
                    ),
                    FixtureScoreBoardPagesTabView(
                      fixture: widget.fixture,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
