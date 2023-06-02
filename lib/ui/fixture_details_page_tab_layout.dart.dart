import 'package:cricjass/Utils/utils.dart';
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

class FixtureDetailsPagesTabViewState
    extends State<FixtureDetailsPagesTabView> {
  @override
  Widget build(BuildContext context) {
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
                      child: Text(
                        "Match Details",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white60),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: const Text(
                                    "Match Date:",
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    Utils()
                                        .formatDate(widget.fixture.startingAt!),
                                    style: const TextStyle(
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white60),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: const Text(
                                    "League Name:",
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    widget.fixture.league!.name!,
                                    style: const TextStyle(
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white60),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: const Text(
                                    "Season:",
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    widget.fixture.season!.name!,
                                    style: const TextStyle(
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white60),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: const Text(
                                    "Venue Name:",
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    widget.fixture.venue!.name!,
                                    style: const TextStyle(
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white60),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: const Text(
                                    "Venue Capacity:",
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    widget.fixture.venue!.capacity!.toString(),
                                    style: const TextStyle(
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white60),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: const Text(
                                    "Venue City:",
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    widget.fixture.venue!.city!,
                                    style: const TextStyle(
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white60),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: const Text(
                                    "Toss Win Team:",
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    widget.fixture.tosswon!.name!,
                                    style: const TextStyle(
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white60),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: const Text(
                                    "Winner Team:",
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    widget.fixture.winnerteam!.name!,
                                    style: const TextStyle(
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white60),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: const Text(
                                    "First Umpire:",
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    widget.fixture.firstumpire!.fullname!,
                                    style: const TextStyle(
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white60),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: const Text(
                                    "Second Umpire:",
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    widget.fixture.secondumpire!.fullname!,
                                    style: const TextStyle(
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white60),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: const Text(
                                    "TV Umpire:",
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    widget.fixture.tvumpire!.fullname!,
                                    style: const TextStyle(
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white60),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: const Text(
                                    "Man of the Match:",
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    widget.fixture.manofmatch!.fullname!,
                                    style: const TextStyle(
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
