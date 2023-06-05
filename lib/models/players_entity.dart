import 'dart:convert';

import 'package:cricjass/generated/json/base/json_field.dart';
import 'package:cricjass/generated/json/players_entity.g.dart';

@JsonSerializable()
class PlayersEntity {
  PlayersData? data;

  PlayersEntity();

  factory PlayersEntity.fromJson(Map<String, dynamic> json) =>
      $PlayersEntityFromJson(json);

  Map<String, dynamic> toJson() => $PlayersEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PlayersData {
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
  PlayersDataPosition? position;
  PlayersDataCountry? country;
  @JSONField(name: "updated_at")
  String? updatedAt;
  List<PlayersDataCareer>? career;
  List<PlayersDataTeams>? teams;
  List<PlayersDataCurrentteams>? currentteams;

  PlayersData();

  factory PlayersData.fromJson(Map<String, dynamic> json) =>
      $PlayersDataFromJson(json);

  Map<String, dynamic> toJson() => $PlayersDataToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PlayersDataPosition {
  String? resource;
  int? id;
  String? name;

  PlayersDataPosition();

  factory PlayersDataPosition.fromJson(Map<String, dynamic> json) =>
      $PlayersDataPositionFromJson(json);

  Map<String, dynamic> toJson() => $PlayersDataPositionToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PlayersDataCountry {
  String? resource;
  int? id;
  @JSONField(name: "continent_id")
  int? continentId;
  String? name;
  @JSONField(name: "image_path")
  String? imagePath;
  @JSONField(name: "updated_at")
  dynamic updatedAt;

  PlayersDataCountry();

  factory PlayersDataCountry.fromJson(Map<String, dynamic> json) =>
      $PlayersDataCountryFromJson(json);

  Map<String, dynamic> toJson() => $PlayersDataCountryToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PlayersDataCareer {
  String? resource;
  String? type;
  @JSONField(name: "season_id")
  int? seasonId;
  @JSONField(name: "player_id")
  int? playerId;
  dynamic bowling;
  PlayersDataCareerBatting? batting;
  @JSONField(name: "updated_at")
  String? updatedAt;

  PlayersDataCareer();

  factory PlayersDataCareer.fromJson(Map<String, dynamic> json) =>
      $PlayersDataCareerFromJson(json);

  Map<String, dynamic> toJson() => $PlayersDataCareerToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PlayersDataCareerBatting {
  int? matches;
  int? innings;
  @JSONField(name: "runs_scored")
  int? runsScored;
  @JSONField(name: "not_outs")
  int? notOuts;
  @JSONField(name: "highest_inning_score")
  int? highestInningScore;
  @JSONField(name: "strike_rate")
  double? strikeRate;
  @JSONField(name: "balls_faced")
  int? ballsFaced;
  double? average;
  @JSONField(name: "four_x")
  int? fourX;
  @JSONField(name: "six_x")
  int? sixX;
  @JSONField(name: "fow_score")
  int? fowScore;
  @JSONField(name: "fow_balls")
  double? fowBalls;
  int? hundreds;
  int? fifties;

  PlayersDataCareerBatting();

  factory PlayersDataCareerBatting.fromJson(Map<String, dynamic> json) =>
      $PlayersDataCareerBattingFromJson(json);

  Map<String, dynamic> toJson() => $PlayersDataCareerBattingToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PlayersDataTeams {
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
  @JSONField(name: "in_squad")
  PlayersDataTeamsInSquad? inSquad;

  PlayersDataTeams();

  factory PlayersDataTeams.fromJson(Map<String, dynamic> json) =>
      $PlayersDataTeamsFromJson(json);

  Map<String, dynamic> toJson() => $PlayersDataTeamsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PlayersDataTeamsInSquad {
  @JSONField(name: "season_id")
  int? seasonId;
  @JSONField(name: "league_id")
  int? leagueId;

  PlayersDataTeamsInSquad();

  factory PlayersDataTeamsInSquad.fromJson(Map<String, dynamic> json) =>
      $PlayersDataTeamsInSquadFromJson(json);

  Map<String, dynamic> toJson() => $PlayersDataTeamsInSquadToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PlayersDataCurrentteams {
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
  @JSONField(name: "in_squad")
  PlayersDataCurrentteamsInSquad? inSquad;

  PlayersDataCurrentteams();

  factory PlayersDataCurrentteams.fromJson(Map<String, dynamic> json) =>
      $PlayersDataCurrentteamsFromJson(json);

  Map<String, dynamic> toJson() => $PlayersDataCurrentteamsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class PlayersDataCurrentteamsInSquad {
  @JSONField(name: "season_id")
  int? seasonId;
  @JSONField(name: "league_id")
  int? leagueId;

  PlayersDataCurrentteamsInSquad();

  factory PlayersDataCurrentteamsInSquad.fromJson(Map<String, dynamic> json) =>
      $PlayersDataCurrentteamsInSquadFromJson(json);

  Map<String, dynamic> toJson() => $PlayersDataCurrentteamsInSquadToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
