import 'package:flutter/material.dart';

class FixtureItem extends StatefulWidget {
  const FixtureItem({Key? key}) : super(key: key);

  @override
  State<FixtureItem> createState() => _FixtureItemState();
}

class _FixtureItemState extends State<FixtureItem> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 100, // Replace with the actual number of items
      itemBuilder: (BuildContext context, int index) {
        return const Center(
          child: Card(
            elevation: 8,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text("24/04 04:00",
                              style: TextStyle(
                                fontSize: 16, // Adjust the font size as needed
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                decoration: TextDecoration.underline,
                                decorationColor: Colors
                                    .red, // Replace with your desired decoration color
                                decorationStyle: TextDecorationStyle.dashed,
                              ))
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "5th T20I",
                            style: TextStyle(
                              fontSize: 16, // Adjust the font size as needed
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
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 40, // Adjust the radius as needed
                                backgroundImage: NetworkImage(
                                    'https://imgv3.fotor.com/images/blog-cover-image/part-blurry-image.jpg'), // Replace with your image URL
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text("Bangladesh",
                                            style: TextStyle(
                                              fontSize:
                                                  16, // Adjust the font size as needed
                                              fontWeight: FontWeight.bold,
                                              fontStyle: FontStyle.italic,
                                              decoration:
                                                  TextDecoration.underline,
                                              decorationColor: Colors
                                                  .red, // Replace with your desired decoration color
                                              decorationStyle:
                                                  TextDecorationStyle.dashed,
                                            )),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text("200/5 (20)",
                                            style: TextStyle(
                                              fontSize:
                                                  16, // Adjust the font size as needed
                                              fontWeight: FontWeight.bold,
                                              fontStyle: FontStyle.italic,
                                              decoration:
                                                  TextDecoration.underline,
                                              decorationColor: Colors
                                                  .red, // Replace with your desired decoration color
                                              decorationStyle:
                                                  TextDecorationStyle.dashed,
                                            )),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      Column(
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
                                        Text("India",
                                            style: TextStyle(
                                              fontSize:
                                                  16, // Adjust the font size as needed
                                              fontWeight: FontWeight.bold,
                                              fontStyle: FontStyle.italic,
                                              decoration:
                                                  TextDecoration.underline,
                                              decorationColor: Colors
                                                  .red, // Replace with your desired decoration color
                                              decorationStyle:
                                                  TextDecorationStyle.dashed,
                                            )),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text("194/10 (20)",
                                            style: TextStyle(
                                              fontSize:
                                                  16, // Adjust the font size as needed
                                              fontWeight: FontWeight.bold,
                                              fontStyle: FontStyle.italic,
                                              decoration:
                                                  TextDecoration.underline,
                                              decorationColor: Colors
                                                  .red, // Replace with your desired decoration color
                                              decorationStyle:
                                                  TextDecorationStyle.dashed,
                                            )),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              CircleAvatar(
                                radius: 40, // Adjust the radius as needed
                                backgroundImage: NetworkImage(
                                    'https://imgv3.fotor.com/images/blog-cover-image/part-blurry-image.jpg'), // Replace with your image URL
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
