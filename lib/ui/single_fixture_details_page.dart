import 'package:flutter/material.dart';

import '../models/fixtures_entity.dart';
import '../utils.dart';

class SingleFixtureDetailsPage extends StatefulWidget {
  final FixturesData fixture;

  const SingleFixtureDetailsPage({Key? key, required this.fixture})
      : super(key: key);

  @override
  State<SingleFixtureDetailsPage> createState() =>
      _SingleFixtureDetailsPageState();
}

class _SingleFixtureDetailsPageState extends State<SingleFixtureDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.fixture.round!),
      ),
      body: Center(
        child: Column(
          children: [
            Card(
              elevation: 8,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                            widget.fixture.status! == "NS"
                                ? "Not Started"
                                : widget.fixture.status!,
                            style: const TextStyle(
                              fontSize: 12,
                              // Adjust the font size as needed
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.red,
                              // Replace with your desired decoration color
                              decorationStyle: TextDecorationStyle.dashed,
                            )),
                        Text(Utils().formatDate(widget.fixture.startingAt!),
                            style: const TextStyle(
                              fontSize: 12,
                              // Adjust the font size as needed
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.red,
                              // Replace with your desired decoration color
                              decorationStyle: TextDecorationStyle.dashed,
                            )),
                        Text(
                          widget.fixture.round!,
                          style: const TextStyle(
                            fontSize: 12,
                            // Adjust the font size as needed
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.red,
                            // Replace with your desired decoration color
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
                                    widget.fixture.localteam!.imagePath!,
                                  ),
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          widget.fixture.localteam!.name!,
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
                                        if (widget.fixture.runs != null &&
                                            widget.fixture.runs!.isNotEmpty &&
                                            widget.fixture.runs!.isNotEmpty)
                                          Text(
                                            "${widget.fixture.runs![0]
                                                .score}/${widget.fixture
                                                .runs![0].wickets} (${widget
                                                .fixture.runs![0].overs})",
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
                                            widget.fixture.visitorteam!.name!,
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
                                          if (widget.fixture.runs != null &&
                                              widget.fixture.runs!.isNotEmpty &&
                                              widget.fixture.runs!.length >= 2)
                                            Text(
                                              "${widget.fixture.runs![1]
                                                  .score}/${widget.fixture
                                                  .runs![1].wickets} (${widget
                                                  .fixture.runs![1].overs})",
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
                                    widget.fixture.visitorteam!.imagePath!,
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


          ],
        ),
      ),
    );
  }
}
