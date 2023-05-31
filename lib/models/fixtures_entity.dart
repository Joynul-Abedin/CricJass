import 'package:cricjass/generated/json/base/json_field.dart';
import 'package:cricjass/generated/json/fixtures_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class FixturesEntity {
	List<FixturesData>? data;
	FixturesLinks? links;
	FixturesMeta? meta;

	FixturesEntity();

	factory FixturesEntity.fromJson(Map<String, dynamic> json) => $FixturesEntityFromJson(json);

	Map<String, dynamic> toJson() => $FixturesEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class FixturesData {
	String? resource;
	int? id;
	@JSONField(name: "league_id")
	int? leagueId;
	@JSONField(name: "season_id")
	int? seasonId;
	@JSONField(name: "stage_id")
	int? stageId;
	String? round;
	@JSONField(name: "localteam_id")
	int? localteamId;
	@JSONField(name: "visitorteam_id")
	int? visitorteamId;
	@JSONField(name: "starting_at")
	String? startingAt;
	String? type;
	bool? live;
	String? status;
	@JSONField(name: "last_period")
	dynamic lastPeriod;
	String? note;
	@JSONField(name: "venue_id")
	int? venueId;
	@JSONField(name: "toss_won_team_id")
	int? tossWonTeamId;
	@JSONField(name: "winner_team_id")
	int? winnerTeamId;
	@JSONField(name: "draw_noresult")
	String? drawNoresult;
	@JSONField(name: "first_umpire_id")
	int? firstUmpireId;
	@JSONField(name: "second_umpire_id")
	int? secondUmpireId;
	@JSONField(name: "tv_umpire_id")
	int? tvUmpireId;
	@JSONField(name: "referee_id")
	int? refereeId;
	@JSONField(name: "man_of_match_id")
	int? manOfMatchId;
	@JSONField(name: "man_of_series_id")
	int? manOfSeriesId;
	@JSONField(name: "total_overs_played")
	int? totalOversPlayed;
	String? elected;
	@JSONField(name: "super_over")
	bool? superOver;
	@JSONField(name: "follow_on")
	bool? followOn;
	@JSONField(name: "localteam_dl_data")
	FixturesDataLocalteamDlData? localteamDlData;
	@JSONField(name: "visitorteam_dl_data")
	FixturesDataVisitorteamDlData? visitorteamDlData;
	@JSONField(name: "rpc_overs")
	dynamic rpcOvers;
	@JSONField(name: "rpc_target")
	dynamic rpcTarget;
	@JSONField(name: "weather_report")
	List<dynamic>? weatherReport;
	FixturesDataLocalteam? localteam;
	FixturesDataVisitorteam? visitorteam;
	List<FixturesDataBatting>? batting;
	List<FixturesDataBowling>? bowling;
	List<FixturesDataRuns>? runs;
	List<FixturesDataLineup>? lineup;
	FixturesDataManofmatch? manofmatch;
	FixturesDataWinnerteam? winnerteam;
	FixturesDataVenue? venue;

	FixturesData();

	factory FixturesData.fromJson(Map<String, dynamic> json) => $FixturesDataFromJson(json);

	Map<String, dynamic> toJson() => $FixturesDataToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class FixturesDataLocalteamDlData {
	dynamic score;
	dynamic overs;
	@JSONField(name: "wickets_out")
	dynamic wicketsOut;

	FixturesDataLocalteamDlData();

	factory FixturesDataLocalteamDlData.fromJson(Map<String, dynamic> json) => $FixturesDataLocalteamDlDataFromJson(json);

	Map<String, dynamic> toJson() => $FixturesDataLocalteamDlDataToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class FixturesDataVisitorteamDlData {
	dynamic score;
	dynamic overs;
	@JSONField(name: "wickets_out")
	dynamic wicketsOut;

	FixturesDataVisitorteamDlData();

	factory FixturesDataVisitorteamDlData.fromJson(Map<String, dynamic> json) => $FixturesDataVisitorteamDlDataFromJson(json);

	Map<String, dynamic> toJson() => $FixturesDataVisitorteamDlDataToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class FixturesDataLocalteam {
	String? resource;
	int? id;
	String? name;
	String? code;
	@JSONField(name: "image_path")
	String? imagePath;
	@JSONField(name: "country_id")
	int? countryId;
	@JSONField(name: "national_team")
	bool? nationalTeam;
	@JSONField(name: "updated_at")
	String? updatedAt;

	FixturesDataLocalteam();

	factory FixturesDataLocalteam.fromJson(Map<String, dynamic> json) => $FixturesDataLocalteamFromJson(json);

	Map<String, dynamic> toJson() => $FixturesDataLocalteamToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class FixturesDataVisitorteam {
	String? resource;
	int? id;
	String? name;
	String? code;
	@JSONField(name: "image_path")
	String? imagePath;
	@JSONField(name: "country_id")
	int? countryId;
	@JSONField(name: "national_team")
	bool? nationalTeam;
	@JSONField(name: "updated_at")
	String? updatedAt;

	FixturesDataVisitorteam();

	factory FixturesDataVisitorteam.fromJson(Map<String, dynamic> json) => $FixturesDataVisitorteamFromJson(json);

	Map<String, dynamic> toJson() => $FixturesDataVisitorteamToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class FixturesDataBatting {
	String? resource;
	int? id;
	int? sort;
	@JSONField(name: "fixture_id")
	int? fixtureId;
	@JSONField(name: "team_id")
	int? teamId;
	bool? active;
	String? scoreboard;
	@JSONField(name: "player_id")
	int? playerId;
	int? ball;
	@JSONField(name: "score_id")
	int? scoreId;
	int? score;
	@JSONField(name: "four_x")
	int? fourX;
	@JSONField(name: "six_x")
	int? sixX;
	@JSONField(name: "catch_stump_player_id")
	int? catchStumpPlayerId;
	@JSONField(name: "runout_by_id")
	dynamic runoutById;
	@JSONField(name: "batsmanout_id")
	dynamic batsmanoutId;
	@JSONField(name: "bowling_player_id")
	int? bowlingPlayerId;
	@JSONField(name: "fow_score")
	int? fowScore;
	@JSONField(name: "fow_balls")
	double? fowBalls;
	double? rate;
	@JSONField(name: "updated_at")
	String? updatedAt;

	FixturesDataBatting();

	factory FixturesDataBatting.fromJson(Map<String, dynamic> json) => $FixturesDataBattingFromJson(json);

	Map<String, dynamic> toJson() => $FixturesDataBattingToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class FixturesDataBowling {
	String? resource;
	int? id;
	int? sort;
	@JSONField(name: "fixture_id")
	int? fixtureId;
	@JSONField(name: "team_id")
	int? teamId;
	bool? active;
	String? scoreboard;
	@JSONField(name: "player_id")
	int? playerId;
	int? overs;
	int? medians;
	int? runs;
	int? wickets;
	int? wide;
	int? noball;
	double? rate;
	@JSONField(name: "updated_at")
	String? updatedAt;

	FixturesDataBowling();

	factory FixturesDataBowling.fromJson(Map<String, dynamic> json) => $FixturesDataBowlingFromJson(json);

	Map<String, dynamic> toJson() => $FixturesDataBowlingToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class FixturesDataRuns {
	String? resource;
	int? id;
	@JSONField(name: "fixture_id")
	int? fixtureId;
	@JSONField(name: "team_id")
	int? teamId;
	int? inning;
	int? score;
	int? wickets;
	int? overs;
	String? pp1;
	dynamic pp2;
	dynamic pp3;
	@JSONField(name: "updated_at")
	String? updatedAt;

	FixturesDataRuns();

	factory FixturesDataRuns.fromJson(Map<String, dynamic> json) => $FixturesDataRunsFromJson(json);

	Map<String, dynamic> toJson() => $FixturesDataRunsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class FixturesDataLineup {
	String? resource;
	int? id;
	@JSONField(name: "country_id")
	int? countryId;
	String? firstname;
	String? lastname;
	String? fullname;
	@JSONField(name: "image_path")
	String? imagePath;
	String? dateofbirth;
	String? gender;
	String? battingstyle;
	String? bowlingstyle;
	FixturesDataLineupPosition? position;
	@JSONField(name: "updated_at")
	String? updatedAt;
	FixturesDataLineupLineup? lineup;

	FixturesDataLineup();

	factory FixturesDataLineup.fromJson(Map<String, dynamic> json) => $FixturesDataLineupFromJson(json);

	Map<String, dynamic> toJson() => $FixturesDataLineupToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class FixturesDataLineupPosition {
	String? resource;
	int? id;
	String? name;

	FixturesDataLineupPosition();

	factory FixturesDataLineupPosition.fromJson(Map<String, dynamic> json) => $FixturesDataLineupPositionFromJson(json);

	Map<String, dynamic> toJson() => $FixturesDataLineupPositionToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class FixturesDataLineupLineup {
	@JSONField(name: "team_id")
	int? teamId;
	bool? captain;
	bool? wicketkeeper;
	bool? substitution;

	FixturesDataLineupLineup();

	factory FixturesDataLineupLineup.fromJson(Map<String, dynamic> json) => $FixturesDataLineupLineupFromJson(json);

	Map<String, dynamic> toJson() => $FixturesDataLineupLineupToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class FixturesDataManofmatch {
	String? resource;
	int? id;
	@JSONField(name: "country_id")
	int? countryId;
	String? firstname;
	String? lastname;
	String? fullname;
	@JSONField(name: "image_path")
	String? imagePath;
	String? dateofbirth;
	String? gender;
	String? battingstyle;
	String? bowlingstyle;
	FixturesDataManofmatchPosition? position;
	@JSONField(name: "updated_at")
	String? updatedAt;

	FixturesDataManofmatch();

	factory FixturesDataManofmatch.fromJson(Map<String, dynamic> json) => $FixturesDataManofmatchFromJson(json);

	Map<String, dynamic> toJson() => $FixturesDataManofmatchToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class FixturesDataManofmatchPosition {
	String? resource;
	int? id;
	String? name;

	FixturesDataManofmatchPosition();

	factory FixturesDataManofmatchPosition.fromJson(Map<String, dynamic> json) => $FixturesDataManofmatchPositionFromJson(json);

	Map<String, dynamic> toJson() => $FixturesDataManofmatchPositionToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class FixturesDataWinnerteam {
	String? resource;
	int? id;
	String? name;
	String? code;
	@JSONField(name: "image_path")
	String? imagePath;
	@JSONField(name: "country_id")
	int? countryId;
	@JSONField(name: "national_team")
	bool? nationalTeam;
	@JSONField(name: "updated_at")
	String? updatedAt;

	FixturesDataWinnerteam();

	factory FixturesDataWinnerteam.fromJson(Map<String, dynamic> json) => $FixturesDataWinnerteamFromJson(json);

	Map<String, dynamic> toJson() => $FixturesDataWinnerteamToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class FixturesDataVenue {
	String? resource;
	int? id;
	@JSONField(name: "country_id")
	int? countryId;
	String? name;
	String? city;
	@JSONField(name: "image_path")
	String? imagePath;
	int? capacity;
	bool? floodlight;
	@JSONField(name: "updated_at")
	String? updatedAt;

	FixturesDataVenue();

	factory FixturesDataVenue.fromJson(Map<String, dynamic> json) => $FixturesDataVenueFromJson(json);

	Map<String, dynamic> toJson() => $FixturesDataVenueToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class FixturesLinks {
	String? first;
	String? last;
	dynamic prev;
	String? next;

	FixturesLinks();

	factory FixturesLinks.fromJson(Map<String, dynamic> json) => $FixturesLinksFromJson(json);

	Map<String, dynamic> toJson() => $FixturesLinksToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class FixturesMeta {
	@JSONField(name: "current_page")
	int? currentPage;
	int? from;
	@JSONField(name: "last_page")
	int? lastPage;
	List<FixturesMetaLinks>? links;
	String? path;
	@JSONField(name: "per_page")
	int? perPage;
	int? to;
	int? total;

	FixturesMeta();

	factory FixturesMeta.fromJson(Map<String, dynamic> json) => $FixturesMetaFromJson(json);

	Map<String, dynamic> toJson() => $FixturesMetaToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class FixturesMetaLinks {
	String? url;
	String? label;
	bool? active;

	FixturesMetaLinks();

	factory FixturesMetaLinks.fromJson(Map<String, dynamic> json) => $FixturesMetaLinksFromJson(json);

	Map<String, dynamic> toJson() => $FixturesMetaLinksToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}