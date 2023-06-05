import 'package:cricjass/Utils/utils.dart';
import 'package:cricjass/models/fixtures_entity.dart';
import 'package:cricjass/ui/Fixtures/single_fixture_details_page.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FixtureItem extends StatefulWidget {
  final List<FixturesData> fixtures;

  const FixtureItem({Key? key, required this.fixtures}) : super(key: key);

  @override
  State<FixtureItem> createState() => _FixtureItemState();
}

class _FixtureItemState extends State<FixtureItem> {
  @override
  Widget build(BuildContext context) {
    // print
    return ListView.builder(
      itemCount:
          widget.fixtures.length, // Replace with the actual number of items
      itemBuilder: (BuildContext context, int index) {
        final fixture = widget.fixtures[index];
        //print the fixture data
        print(fixture);
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      SingleFixtureDetailsPage(fixture: fixture)),
            );
            Fluttertoast.showToast(
                msg: "Fixture Id: ${fixture.id}",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 1);
          },
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Card(
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
                                  fontSize: 14,
                                  // Adjust the font size as needed
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                )),
                            Text(Utils().formatDate(fixture.startingAt!),
                                style: const TextStyle(
                                  fontSize: 14,
                                  // Adjust the font size as needed
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                )),
                            Text(
                              fixture.round!,
                              style: const TextStyle(
                                fontSize: 14,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
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
                                                  fontSize: 14,
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
                                                  fontSize: 14,
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          width: 80,
                                          child: Text(
                                            fixture.visitorteam!.name!,
                                            style: const TextStyle(
                                              fontSize: 14,
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
                                              fontSize: 14,
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
              ),
            ),
          ),
        );
      },
    );
  }
}
