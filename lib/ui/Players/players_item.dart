import 'package:cricjass/models/players_entity.dart';
import 'package:cricjass/ui/Players/palyer_details_page_for_all_players.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class PlayerItem extends StatefulWidget {
  final List<PlayersData> players;

  const PlayerItem({Key? key, required this.players}) : super(key: key);

  @override
  State<PlayerItem> createState() => _PlayerItemState();
}

class _PlayerItemState extends State<PlayerItem> {
  @override
  Widget build(BuildContext context) {
    // print
    return ListView.builder(
      itemCount:
          widget.players.length, // Replace with the actual number of items
      itemBuilder: (BuildContext context, int index) {
        final player = widget.players[index];
        //print the player data
        print(player);
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => PlayerDetails(player: player)),
            );
            Fluttertoast.showToast(
                msg: "player Id: ${player.id}",
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
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 8.0, bottom: 8.0, right: 8.0),
                        child: Image(
                          height: 100,
                          width: 100,
                          image: NetworkImage(
                            player.imagePath!,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            player.fullname!,
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
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
