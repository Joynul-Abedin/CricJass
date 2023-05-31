import 'package:cricjass/models/fixtures_entity.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';

class FixtureItem extends StatefulWidget {
  final List<FixturesData> fixtures;
  const FixtureItem({Key? key, required this.fixtures}) : super(key: key);

  @override
  State<FixtureItem> createState() => _FixtureItemState();
}

class _FixtureItemState extends State<FixtureItem> {
  // A function to format the date
  String formatDate(String date) {
    final DateTime dateTime = DateTime.parse(date);
    final DateFormat formatter = DateFormat('dd/MM/yy HH:mm');
    final String formatted = formatter.format(dateTime);
    return formatted;
  }

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
            Fluttertoast.showToast(
                msg: "Fixture Id: ${fixture.id}",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 1);
          },
          child: Center(
            child: Card(
              elevation: 8,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                            fixture.status! == "NS"
                                ? "Not Started"
                                : fixture.status!,
                            style: const TextStyle(
                              fontSize: 12, // Adjust the font size as needed
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors
                                  .red, // Replace with your desired decoration color
                              decorationStyle: TextDecorationStyle.dashed,
                            )),
                        Text(formatDate(fixture.startingAt!),
                            style: const TextStyle(
                              fontSize: 12, // Adjust the font size as needed
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors
                                  .red, // Replace with your desired decoration color
                              decorationStyle: TextDecorationStyle.dashed,
                            )),
                        Text(
                          fixture.round!,
                          style: const TextStyle(
                            fontSize: 12, // Adjust the font size as needed
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors
                                .red, // Replace with your desired decoration color
                            decorationStyle: TextDecorationStyle.dashed,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image(
                                  height: 70,
                                  width: 70,
                                  image: NetworkImage(
                                    fixture.localteam!.imagePath!,
                                  ),
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          fixture.localteam!.name!,
                                          style: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.italic,
                                            decoration:
                                                TextDecoration.underline,
                                            decorationColor: Colors.red,
                                            decorationStyle:
                                                TextDecorationStyle.dashed,
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
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              fontStyle: FontStyle.italic,
                                              decoration:
                                                  TextDecoration.underline,
                                              decorationColor: Colors.red,
                                              decorationStyle:
                                                  TextDecorationStyle.dashed,
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
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            fixture.visitorteam!.name!,
                                            style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              fontStyle: FontStyle.italic,
                                              decoration:
                                                  TextDecoration.underline,
                                              decorationColor: Colors.red,
                                              decorationStyle:
                                                  TextDecorationStyle.dashed,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          if (fixture.runs != null &&
                                              fixture.runs!.isNotEmpty &&
                                              fixture.runs!.length >= 2)
                                            Text(
                                              "${fixture.runs![1].score}/${fixture.runs![1].wickets} (${fixture.runs![1].overs})",
                                              style: const TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                                fontStyle: FontStyle.italic,
                                                decoration:
                                                    TextDecoration.underline,
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
                                Image(
                                  height: 70,
                                  width: 70,
                                  image: NetworkImage(
                                    fixture.localteam!.imagePath!,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
