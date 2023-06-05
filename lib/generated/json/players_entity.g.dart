import 'package:cricjass/generated/json/base/json_convert_content.dart';
import 'package:cricjass/models/players_entity.dart';

PlayersEntity $PlayersEntityFromJson(Map<String, dynamic> json) {
  final PlayersEntity playersEntity = PlayersEntity();
  final PlayersData? data = jsonConvert.convert<PlayersData>(json['data']);
  if (data != null) {
    playersEntity.data = data;
  }
  return playersEntity;
}

Map<String, dynamic> $PlayersEntityToJson(PlayersEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['data'] = entity.data?.toJson();
  return data;
}

PlayersData $PlayersDataFromJson(Map<String, dynamic> json) {
  final PlayersData playersData = PlayersData();
  final String? resource = jsonConvert.convert<String>(json['resource']);
  if (resource != null) {
    playersData.resource = resource;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    playersData.id = id;
  }
  final int? countryId = jsonConvert.convert<int>(json['country_id']);
  if (countryId != null) {
    playersData.countryId = countryId;
  }
  final String? firstname = jsonConvert.convert<String>(json['firstname']);
  if (firstname != null) {
    playersData.firstname = firstname;
  }
  final String? lastname = jsonConvert.convert<String>(json['lastname']);
  if (lastname != null) {
    playersData.lastname = lastname;
  }
  final String? fullname = jsonConvert.convert<String>(json['fullname']);
  if (fullname != null) {
    playersData.fullname = fullname;
  }
  final String? imagePath = jsonConvert.convert<String>(json['image_path']);
  if (imagePath != null) {
    playersData.imagePath = imagePath;
  }
  final String? dateofbirth = jsonConvert.convert<String>(json['dateofbirth']);
  if (dateofbirth != null) {
    playersData.dateofbirth = dateofbirth;
  }
  final String? gender = jsonConvert.convert<String>(json['gender']);
  if (gender != null) {
    playersData.gender = gender;
  }
  final String? battingstyle =
      jsonConvert.convert<String>(json['battingstyle']);
  if (battingstyle != null) {
    playersData.battingstyle = battingstyle;
  }
  final String? bowlingstyle =
      jsonConvert.convert<String>(json['bowlingstyle']);
  if (bowlingstyle != null) {
    playersData.bowlingstyle = bowlingstyle;
  }
  final PlayersDataPosition? position =
      jsonConvert.convert<PlayersDataPosition>(json['position']);
  if (position != null) {
    playersData.position = position;
  }
  final PlayersDataCountry? country =
      jsonConvert.convert<PlayersDataCountry>(json['country']);
  if (country != null) {
    playersData.country = country;
  }
  final String? updatedAt = jsonConvert.convert<String>(json['updated_at']);
  if (updatedAt != null) {
    playersData.updatedAt = updatedAt;
  }
  final List<PlayersDataCareer>? career =
      jsonConvert.convertListNotNull<PlayersDataCareer>(json['career']);
  if (career != null) {
    playersData.career = career;
  }
  final List<PlayersDataTeams>? teams =
      jsonConvert.convertListNotNull<PlayersDataTeams>(json['teams']);
  if (teams != null) {
    playersData.teams = teams;
  }
  final List<PlayersDataCurrentteams>? currentteams = jsonConvert
      .convertListNotNull<PlayersDataCurrentteams>(json['currentteams']);
  if (currentteams != null) {
    playersData.currentteams = currentteams;
  }
  return playersData;
}

Map<String, dynamic> $PlayersDataToJson(PlayersData entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['resource'] = entity.resource;
  data['id'] = entity.id;
  data['country_id'] = entity.countryId;
  data['firstname'] = entity.firstname;
  data['lastname'] = entity.lastname;
  data['fullname'] = entity.fullname;
  data['image_path'] = entity.imagePath;
  data['dateofbirth'] = entity.dateofbirth;
  data['gender'] = entity.gender;
  data['battingstyle'] = entity.battingstyle;
  data['bowlingstyle'] = entity.bowlingstyle;
  data['position'] = entity.position?.toJson();
  data['country'] = entity.country?.toJson();
  data['updated_at'] = entity.updatedAt;
  data['career'] = entity.career?.map((v) => v.toJson()).toList();
  data['teams'] = entity.teams?.map((v) => v.toJson()).toList();
  data['currentteams'] = entity.currentteams?.map((v) => v.toJson()).toList();
  return data;
}

PlayersDataPosition $PlayersDataPositionFromJson(Map<String, dynamic> json) {
  final PlayersDataPosition playersDataPosition = PlayersDataPosition();
  final String? resource = jsonConvert.convert<String>(json['resource']);
  if (resource != null) {
    playersDataPosition.resource = resource;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    playersDataPosition.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    playersDataPosition.name = name;
  }
  return playersDataPosition;
}

Map<String, dynamic> $PlayersDataPositionToJson(PlayersDataPosition entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['resource'] = entity.resource;
  data['id'] = entity.id;
  data['name'] = entity.name;
  return data;
}

PlayersDataCountry $PlayersDataCountryFromJson(Map<String, dynamic> json) {
  final PlayersDataCountry playersDataCountry = PlayersDataCountry();
  final String? resource = jsonConvert.convert<String>(json['resource']);
  if (resource != null) {
    playersDataCountry.resource = resource;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    playersDataCountry.id = id;
  }
  final int? continentId = jsonConvert.convert<int>(json['continent_id']);
  if (continentId != null) {
    playersDataCountry.continentId = continentId;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    playersDataCountry.name = name;
  }
  final String? imagePath = jsonConvert.convert<String>(json['image_path']);
  if (imagePath != null) {
    playersDataCountry.imagePath = imagePath;
  }
  final dynamic updatedAt = jsonConvert.convert<dynamic>(json['updated_at']);
  if (updatedAt != null) {
    playersDataCountry.updatedAt = updatedAt;
  }
  return playersDataCountry;
}

Map<String, dynamic> $PlayersDataCountryToJson(PlayersDataCountry entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['resource'] = entity.resource;
  data['id'] = entity.id;
  data['continent_id'] = entity.continentId;
  data['name'] = entity.name;
  data['image_path'] = entity.imagePath;
  data['updated_at'] = entity.updatedAt;
  return data;
}

PlayersDataCareer $PlayersDataCareerFromJson(Map<String, dynamic> json) {
  final PlayersDataCareer playersDataCareer = PlayersDataCareer();
  final String? resource = jsonConvert.convert<String>(json['resource']);
  if (resource != null) {
    playersDataCareer.resource = resource;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    playersDataCareer.type = type;
  }
  final int? seasonId = jsonConvert.convert<int>(json['season_id']);
  if (seasonId != null) {
    playersDataCareer.seasonId = seasonId;
  }
  final int? playerId = jsonConvert.convert<int>(json['player_id']);
  if (playerId != null) {
    playersDataCareer.playerId = playerId;
  }
  final dynamic bowling = jsonConvert.convert<dynamic>(json['bowling']);
  if (bowling != null) {
    playersDataCareer.bowling = bowling;
  }
  final PlayersDataCareerBatting? batting =
      jsonConvert.convert<PlayersDataCareerBatting>(json['batting']);
  if (batting != null) {
    playersDataCareer.batting = batting;
  }
  final String? updatedAt = jsonConvert.convert<String>(json['updated_at']);
  if (updatedAt != null) {
    playersDataCareer.updatedAt = updatedAt;
  }
  return playersDataCareer;
}

Map<String, dynamic> $PlayersDataCareerToJson(PlayersDataCareer entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['resource'] = entity.resource;
  data['type'] = entity.type;
  data['season_id'] = entity.seasonId;
  data['player_id'] = entity.playerId;
  data['bowling'] = entity.bowling;
  data['batting'] = entity.batting?.toJson();
  data['updated_at'] = entity.updatedAt;
  return data;
}

PlayersDataCareerBatting $PlayersDataCareerBattingFromJson(
    Map<String, dynamic> json) {
  final PlayersDataCareerBatting playersDataCareerBatting =
      PlayersDataCareerBatting();
  final int? matches = jsonConvert.convert<int>(json['matches']);
  if (matches != null) {
    playersDataCareerBatting.matches = matches;
  }
  final int? innings = jsonConvert.convert<int>(json['innings']);
  if (innings != null) {
    playersDataCareerBatting.innings = innings;
  }
  final int? runsScored = jsonConvert.convert<int>(json['runs_scored']);
  if (runsScored != null) {
    playersDataCareerBatting.runsScored = runsScored;
  }
  final int? notOuts = jsonConvert.convert<int>(json['not_outs']);
  if (notOuts != null) {
    playersDataCareerBatting.notOuts = notOuts;
  }
  final int? highestInningScore =
      jsonConvert.convert<int>(json['highest_inning_score']);
  if (highestInningScore != null) {
    playersDataCareerBatting.highestInningScore = highestInningScore;
  }
  final double? strikeRate = jsonConvert.convert<double>(json['strike_rate']);
  if (strikeRate != null) {
    playersDataCareerBatting.strikeRate = strikeRate;
  }
  final int? ballsFaced = jsonConvert.convert<int>(json['balls_faced']);
  if (ballsFaced != null) {
    playersDataCareerBatting.ballsFaced = ballsFaced;
  }
  final double? average = jsonConvert.convert<double>(json['average']);
  if (average != null) {
    playersDataCareerBatting.average = average;
  }
  final int? fourX = jsonConvert.convert<int>(json['four_x']);
  if (fourX != null) {
    playersDataCareerBatting.fourX = fourX;
  }
  final int? sixX = jsonConvert.convert<int>(json['six_x']);
  if (sixX != null) {
    playersDataCareerBatting.sixX = sixX;
  }
  final int? fowScore = jsonConvert.convert<int>(json['fow_score']);
  if (fowScore != null) {
    playersDataCareerBatting.fowScore = fowScore;
  }
  final double? fowBalls = jsonConvert.convert<double>(json['fow_balls']);
  if (fowBalls != null) {
    playersDataCareerBatting.fowBalls = fowBalls;
  }
  final int? hundreds = jsonConvert.convert<int>(json['hundreds']);
  if (hundreds != null) {
    playersDataCareerBatting.hundreds = hundreds;
  }
  final int? fifties = jsonConvert.convert<int>(json['fifties']);
  if (fifties != null) {
    playersDataCareerBatting.fifties = fifties;
  }
  return playersDataCareerBatting;
}

Map<String, dynamic> $PlayersDataCareerBattingToJson(
    PlayersDataCareerBatting entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['matches'] = entity.matches;
  data['innings'] = entity.innings;
  data['runs_scored'] = entity.runsScored;
  data['not_outs'] = entity.notOuts;
  data['highest_inning_score'] = entity.highestInningScore;
  data['strike_rate'] = entity.strikeRate;
  data['balls_faced'] = entity.ballsFaced;
  data['average'] = entity.average;
  data['four_x'] = entity.fourX;
  data['six_x'] = entity.sixX;
  data['fow_score'] = entity.fowScore;
  data['fow_balls'] = entity.fowBalls;
  data['hundreds'] = entity.hundreds;
  data['fifties'] = entity.fifties;
  return data;
}

PlayersDataTeams $PlayersDataTeamsFromJson(Map<String, dynamic> json) {
  final PlayersDataTeams playersDataTeams = PlayersDataTeams();
  final String? resource = jsonConvert.convert<String>(json['resource']);
  if (resource != null) {
    playersDataTeams.resource = resource;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    playersDataTeams.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    playersDataTeams.name = name;
  }
  final String? code = jsonConvert.convert<String>(json['code']);
  if (code != null) {
    playersDataTeams.code = code;
  }
  final String? imagePath = jsonConvert.convert<String>(json['image_path']);
  if (imagePath != null) {
    playersDataTeams.imagePath = imagePath;
  }
  final int? countryId = jsonConvert.convert<int>(json['country_id']);
  if (countryId != null) {
    playersDataTeams.countryId = countryId;
  }
  final bool? nationalTeam = jsonConvert.convert<bool>(json['national_team']);
  if (nationalTeam != null) {
    playersDataTeams.nationalTeam = nationalTeam;
  }
  final String? updatedAt = jsonConvert.convert<String>(json['updated_at']);
  if (updatedAt != null) {
    playersDataTeams.updatedAt = updatedAt;
  }
  final PlayersDataTeamsInSquad? inSquad =
      jsonConvert.convert<PlayersDataTeamsInSquad>(json['in_squad']);
  if (inSquad != null) {
    playersDataTeams.inSquad = inSquad;
  }
  return playersDataTeams;
}

Map<String, dynamic> $PlayersDataTeamsToJson(PlayersDataTeams entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['resource'] = entity.resource;
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['code'] = entity.code;
  data['image_path'] = entity.imagePath;
  data['country_id'] = entity.countryId;
  data['national_team'] = entity.nationalTeam;
  data['updated_at'] = entity.updatedAt;
  data['in_squad'] = entity.inSquad?.toJson();
  return data;
}

PlayersDataTeamsInSquad $PlayersDataTeamsInSquadFromJson(
    Map<String, dynamic> json) {
  final PlayersDataTeamsInSquad playersDataTeamsInSquad =
      PlayersDataTeamsInSquad();
  final int? seasonId = jsonConvert.convert<int>(json['season_id']);
  if (seasonId != null) {
    playersDataTeamsInSquad.seasonId = seasonId;
  }
  final int? leagueId = jsonConvert.convert<int>(json['league_id']);
  if (leagueId != null) {
    playersDataTeamsInSquad.leagueId = leagueId;
  }
  return playersDataTeamsInSquad;
}

Map<String, dynamic> $PlayersDataTeamsInSquadToJson(
    PlayersDataTeamsInSquad entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['season_id'] = entity.seasonId;
  data['league_id'] = entity.leagueId;
  return data;
}

PlayersDataCurrentteams $PlayersDataCurrentteamsFromJson(
    Map<String, dynamic> json) {
  final PlayersDataCurrentteams playersDataCurrentteams =
      PlayersDataCurrentteams();
  final String? resource = jsonConvert.convert<String>(json['resource']);
  if (resource != null) {
    playersDataCurrentteams.resource = resource;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    playersDataCurrentteams.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    playersDataCurrentteams.name = name;
  }
  final String? code = jsonConvert.convert<String>(json['code']);
  if (code != null) {
    playersDataCurrentteams.code = code;
  }
  final String? imagePath = jsonConvert.convert<String>(json['image_path']);
  if (imagePath != null) {
    playersDataCurrentteams.imagePath = imagePath;
  }
  final int? countryId = jsonConvert.convert<int>(json['country_id']);
  if (countryId != null) {
    playersDataCurrentteams.countryId = countryId;
  }
  final bool? nationalTeam = jsonConvert.convert<bool>(json['national_team']);
  if (nationalTeam != null) {
    playersDataCurrentteams.nationalTeam = nationalTeam;
  }
  final String? updatedAt = jsonConvert.convert<String>(json['updated_at']);
  if (updatedAt != null) {
    playersDataCurrentteams.updatedAt = updatedAt;
  }
  final PlayersDataCurrentteamsInSquad? inSquad =
      jsonConvert.convert<PlayersDataCurrentteamsInSquad>(json['in_squad']);
  if (inSquad != null) {
    playersDataCurrentteams.inSquad = inSquad;
  }
  return playersDataCurrentteams;
}

Map<String, dynamic> $PlayersDataCurrentteamsToJson(
    PlayersDataCurrentteams entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['resource'] = entity.resource;
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['code'] = entity.code;
  data['image_path'] = entity.imagePath;
  data['country_id'] = entity.countryId;
  data['national_team'] = entity.nationalTeam;
  data['updated_at'] = entity.updatedAt;
  data['in_squad'] = entity.inSquad?.toJson();
  return data;
}

PlayersDataCurrentteamsInSquad $PlayersDataCurrentteamsInSquadFromJson(
    Map<String, dynamic> json) {
  final PlayersDataCurrentteamsInSquad playersDataCurrentteamsInSquad =
      PlayersDataCurrentteamsInSquad();
  final int? seasonId = jsonConvert.convert<int>(json['season_id']);
  if (seasonId != null) {
    playersDataCurrentteamsInSquad.seasonId = seasonId;
  }
  final int? leagueId = jsonConvert.convert<int>(json['league_id']);
  if (leagueId != null) {
    playersDataCurrentteamsInSquad.leagueId = leagueId;
  }
  return playersDataCurrentteamsInSquad;
}

Map<String, dynamic> $PlayersDataCurrentteamsInSquadToJson(
    PlayersDataCurrentteamsInSquad entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['season_id'] = entity.seasonId;
  data['league_id'] = entity.leagueId;
  return data;
}
