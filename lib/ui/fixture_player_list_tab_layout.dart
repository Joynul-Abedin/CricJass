import 'package:cricjass/models/fixtures_entity.dart';
import 'package:flutter/material.dart';

class FixturePlayerListPagesTabView extends StatefulWidget {
  final FixturesData fixture;

  const FixturePlayerListPagesTabView({Key? key, required this.fixture})
      : super(key: key);
  @override
  FixturePlayerListPagesTabViewState createState() =>
      FixturePlayerListPagesTabViewState();
}

class FixturePlayerListPagesTabViewState
    extends State<FixturePlayerListPagesTabView>
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
    final localTeamLineUp = widget.fixture.lineup!
        .where(
            (element) => element.lineup?.teamId == widget.fixture.localteamId)
        .toList();
    final visitorTeamLineUp = widget.fixture.lineup!
        .where(
            (element) => element.lineup?.teamId == widget.fixture.visitorteamId)
        .toList();

    return Scaffold(
      body: Row(
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
                    itemCount: localTeamLineUp.length,
                    itemBuilder: (context, index) {
                      final lineUp = localTeamLineUp[index];
                      return Card(
                        elevation: 8,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image(
                                    height: 50,
                                    width: 50,
                                    image: NetworkImage(
                                      lineUp.imagePath!,
                                    ),
                                  ),
                                  Text(
                                    lineUp.fullname!,
                                    style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic,
                                      decoration: TextDecoration.underline,
                                      decorationColor: Colors.red,
                                      decorationStyle:
                                          TextDecorationStyle.dashed,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
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
                        widget.fixture.visitorteam!.name!,
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
                    itemCount: visitorTeamLineUp.length,
                    itemBuilder: (context, index) {
                      final lineUp = visitorTeamLineUp[index];
                      return Card(
                        elevation: 8,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image(
                                    height: 50,
                                    width: 50,
                                    image: NetworkImage(
                                      lineUp.imagePath!,
                                    ),
                                  ),
                                  Text(
                                    lineUp.fullname!,
                                    style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic,
                                      decoration: TextDecoration.underline,
                                      decorationColor: Colors.red,
                                      decorationStyle:
                                          TextDecorationStyle.dashed,
                                    ),
                                  ),
                                ],
                              ),
                            ],
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
    );
  }
}
