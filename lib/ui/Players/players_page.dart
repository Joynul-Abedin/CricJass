import 'package:cricjass/models/players_entity.dart';
import 'package:cricjass/ui/Players/players_item.dart';
import 'package:flutter/material.dart';

import '../../services/api_service.dart';

class PlayersPage extends StatefulWidget {
  const PlayersPage({Key? key}) : super(key: key);

  @override
  State<PlayersPage> createState() => _PlayersPageState();
}

class _PlayersPageState extends State<PlayersPage>
    with TickerProviderStateMixin {
  late TabController _tabController;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
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
          tabs: const [
            Tab(text: "Batsman"),
            Tab(text: "Bowler"),
            Tab(text: "Allrounder"),
            Tab(text: "Teams"),
          ],
        ),
        title: const Text('CricJass'),
        elevation: 10.0,
      ),
      body: Form(
        key: _formKey,
        child: TabBarView(
          controller: _tabController,
          children: const [
            PlayersListAtb(data: "Batsman"),
            PlayersListAtb(data: "Bowler"),
            PlayersListAtb(data: "Allrounder"),
            PlayersListAtb(data: "Batsman"),
          ],
        ),
      ),
    );
  }
}

class PlayersListAtb extends StatefulWidget {
  final String data;
  const PlayersListAtb({super.key, required this.data});

  @override
  State<PlayersListAtb> createState() => _PlayersListAtbState();
}

class _PlayersListAtbState extends State<PlayersListAtb> {
  Future<List<PlayersData>> fetchPlayers() async {
    try {
      final players = await ApiService.instance.getAllPlayers();
      return players;
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
      child: FutureBuilder<List<PlayersData>>(
        future: fetchPlayers(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final players = snapshot.data!
                .where((element) => element.position!.name! == widget.data)
                .toList();
            return PlayerItem(players: players);
          } else if (snapshot.hasError) {
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
