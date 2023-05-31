import 'package:cricjass/generated/json/base/json_field.dart';
import 'package:cricjass/generated/json/fixture_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class FixtureEntity {
	late List<FixtureData> data;
	late FixtureLinks links;
	late FixtureMeta meta;

	FixtureEntity();

	factory FixtureEntity.fromJson(Map<String, dynamic> json) => $FixtureEntityFromJson(json);

	Map<String, dynamic> toJson() => $FixtureEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class FixtureData {
	late String resource;
	late int id;
	@JSONField(name: "league_id")
	late int leagueId;
	@JSONField(name: "season_id")
	late int seasonId;
	@JSONField(name: "stage_id")
	late int stageId;
	late String round;
	@JSONField(name: "localteam_id")
	late int localteamId;
	@JSONField(name: "visitorteam_id")
	late int visitorteamId;
	@JSONField(name: "starting_at")
	late String startingAt;
	late String type;
	late bool live;
	late String status;
	@JSONField(name: "last_period")
	dynamic lastPeriod;
	late String note;
	@JSONField(name: "venue_id")
	late int venueId;
	@JSONField(name: "toss_won_team_id")
	late int tossWonTeamId;
	@JSONField(name: "winner_team_id")
	late int winnerTeamId;
	@JSONField(name: "draw_noresult")
	late String drawNoresult;
	@JSONField(name: "first_umpire_id")
	late int firstUmpireId;
	@JSONField(name: "second_umpire_id")
	late int secondUmpireId;
	@JSONField(name: "tv_umpire_id")
	late int tvUmpireId;
	@JSONField(name: "referee_id")
	late int refereeId;
	@JSONField(name: "man_of_match_id")
	late int manOfMatchId;
	@JSONField(name: "man_of_series_id")
	late int manOfSeriesId;
	@JSONField(name: "total_overs_played")
	late int totalOversPlayed;
	late String elected;
	@JSONField(name: "super_over")
	late bool superOver;
	@JSONField(name: "follow_on")
	late bool followOn;
	@JSONField(name: "localteam_dl_data")
	late FixtureDataLocalteamDlData localteamDlData;
	@JSONField(name: "visitorteam_dl_data")
	late FixtureDataVisitorteamDlData visitorteamDlData;
	@JSONField(name: "rpc_overs")
	dynamic rpcOvers;
	@JSONField(name: "rpc_target")
	dynamic rpcTarget;
	@JSONField(name: "weather_report")
	late List<dynamic> weatherReport;

	FixtureData();

	factory FixtureData.fromJson(Map<String, dynamic> json) => $FixtureDataFromJson(json);

	Map<String, dynamic> toJson() => $FixtureDataToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class FixtureDataLocalteamDlData {
	dynamic score;
	dynamic overs;
	@JSONField(name: "wickets_out")
	dynamic wicketsOut;

	FixtureDataLocalteamDlData();

	factory FixtureDataLocalteamDlData.fromJson(Map<String, dynamic> json) => $FixtureDataLocalteamDlDataFromJson(json);

	Map<String, dynamic> toJson() => $FixtureDataLocalteamDlDataToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class FixtureDataVisitorteamDlData {
	dynamic score;
	dynamic overs;
	@JSONField(name: "wickets_out")
	dynamic wicketsOut;

	FixtureDataVisitorteamDlData();

	factory FixtureDataVisitorteamDlData.fromJson(Map<String, dynamic> json) => $FixtureDataVisitorteamDlDataFromJson(json);

	Map<String, dynamic> toJson() => $FixtureDataVisitorteamDlDataToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class FixtureLinks {
	late String first;
	late String last;
	dynamic prev;
	late String next;

	FixtureLinks();

	factory FixtureLinks.fromJson(Map<String, dynamic> json) => $FixtureLinksFromJson(json);

	Map<String, dynamic> toJson() => $FixtureLinksToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class FixtureMeta {
	@JSONField(name: "current_page")
	late int currentPage;
	late int from;
	@JSONField(name: "last_page")
	late int lastPage;
	late List<FixtureMetaLinks> links;
	late String path;
	@JSONField(name: "per_page")
	late int perPage;
	late int to;
	late int total;

	FixtureMeta();

	factory FixtureMeta.fromJson(Map<String, dynamic> json) => $FixtureMetaFromJson(json);

	Map<String, dynamic> toJson() => $FixtureMetaToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class FixtureMetaLinks {
	late String url;
	late String label;
	late bool active;

	FixtureMetaLinks();

	factory FixtureMetaLinks.fromJson(Map<String, dynamic> json) => $FixtureMetaLinksFromJson(json);

	Map<String, dynamic> toJson() => $FixtureMetaLinksToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}