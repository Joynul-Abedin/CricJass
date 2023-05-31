import 'package:cricjass/generated/json/base/json_convert_content.dart';
import 'package:cricjass/models/fixtures_entity.dart';

FixturesEntity $FixturesEntityFromJson(Map<String, dynamic> json) {
	final FixturesEntity fixturesEntity = FixturesEntity();
	final List<FixturesData>? data = jsonConvert.convertListNotNull<FixturesData>(json['data']);
	if (data != null) {
		fixturesEntity.data = data;
	}
	final FixturesLinks? links = jsonConvert.convert<FixturesLinks>(json['links']);
	if (links != null) {
		fixturesEntity.links = links;
	}
	final FixturesMeta? meta = jsonConvert.convert<FixturesMeta>(json['meta']);
	if (meta != null) {
		fixturesEntity.meta = meta;
	}
	return fixturesEntity;
}

Map<String, dynamic> $FixturesEntityToJson(FixturesEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['data'] =  entity.data?.map((v) => v.toJson()).toList();
	data['links'] = entity.links?.toJson();
	data['meta'] = entity.meta?.toJson();
	return data;
}

FixturesData $FixturesDataFromJson(Map<String, dynamic> json) {
	final FixturesData fixturesData = FixturesData();
	final String? resource = jsonConvert.convert<String>(json['resource']);
	if (resource != null) {
		fixturesData.resource = resource;
	}
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		fixturesData.id = id;
	}
	final int? leagueId = jsonConvert.convert<int>(json['league_id']);
	if (leagueId != null) {
		fixturesData.leagueId = leagueId;
	}
	final int? seasonId = jsonConvert.convert<int>(json['season_id']);
	if (seasonId != null) {
		fixturesData.seasonId = seasonId;
	}
	final int? stageId = jsonConvert.convert<int>(json['stage_id']);
	if (stageId != null) {
		fixturesData.stageId = stageId;
	}
	final String? round = jsonConvert.convert<String>(json['round']);
	if (round != null) {
		fixturesData.round = round;
	}
	final int? localteamId = jsonConvert.convert<int>(json['localteam_id']);
	if (localteamId != null) {
		fixturesData.localteamId = localteamId;
	}
	final int? visitorteamId = jsonConvert.convert<int>(json['visitorteam_id']);
	if (visitorteamId != null) {
		fixturesData.visitorteamId = visitorteamId;
	}
	final String? startingAt = jsonConvert.convert<String>(json['starting_at']);
	if (startingAt != null) {
		fixturesData.startingAt = startingAt;
	}
	final String? type = jsonConvert.convert<String>(json['type']);
	if (type != null) {
		fixturesData.type = type;
	}
	final bool? live = jsonConvert.convert<bool>(json['live']);
	if (live != null) {
		fixturesData.live = live;
	}
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		fixturesData.status = status;
	}
	final dynamic lastPeriod = jsonConvert.convert<dynamic>(json['last_period']);
	if (lastPeriod != null) {
		fixturesData.lastPeriod = lastPeriod;
	}
	final String? note = jsonConvert.convert<String>(json['note']);
	if (note != null) {
		fixturesData.note = note;
	}
	final int? venueId = jsonConvert.convert<int>(json['venue_id']);
	if (venueId != null) {
		fixturesData.venueId = venueId;
	}
	final int? tossWonTeamId = jsonConvert.convert<int>(json['toss_won_team_id']);
	if (tossWonTeamId != null) {
		fixturesData.tossWonTeamId = tossWonTeamId;
	}
	final int? winnerTeamId = jsonConvert.convert<int>(json['winner_team_id']);
	if (winnerTeamId != null) {
		fixturesData.winnerTeamId = winnerTeamId;
	}
	final String? drawNoresult = jsonConvert.convert<String>(json['draw_noresult']);
	if (drawNoresult != null) {
		fixturesData.drawNoresult = drawNoresult;
	}
	final int? firstUmpireId = jsonConvert.convert<int>(json['first_umpire_id']);
	if (firstUmpireId != null) {
		fixturesData.firstUmpireId = firstUmpireId;
	}
	final int? secondUmpireId = jsonConvert.convert<int>(json['second_umpire_id']);
	if (secondUmpireId != null) {
		fixturesData.secondUmpireId = secondUmpireId;
	}
	final int? tvUmpireId = jsonConvert.convert<int>(json['tv_umpire_id']);
	if (tvUmpireId != null) {
		fixturesData.tvUmpireId = tvUmpireId;
	}
	final int? refereeId = jsonConvert.convert<int>(json['referee_id']);
	if (refereeId != null) {
		fixturesData.refereeId = refereeId;
	}
	final int? manOfMatchId = jsonConvert.convert<int>(json['man_of_match_id']);
	if (manOfMatchId != null) {
		fixturesData.manOfMatchId = manOfMatchId;
	}
	final int? manOfSeriesId = jsonConvert.convert<int>(json['man_of_series_id']);
	if (manOfSeriesId != null) {
		fixturesData.manOfSeriesId = manOfSeriesId;
	}
	final int? totalOversPlayed = jsonConvert.convert<int>(json['total_overs_played']);
	if (totalOversPlayed != null) {
		fixturesData.totalOversPlayed = totalOversPlayed;
	}
	final String? elected = jsonConvert.convert<String>(json['elected']);
	if (elected != null) {
		fixturesData.elected = elected;
	}
	final bool? superOver = jsonConvert.convert<bool>(json['super_over']);
	if (superOver != null) {
		fixturesData.superOver = superOver;
	}
	final bool? followOn = jsonConvert.convert<bool>(json['follow_on']);
	if (followOn != null) {
		fixturesData.followOn = followOn;
	}
	final FixturesDataLocalteamDlData? localteamDlData = jsonConvert.convert<FixturesDataLocalteamDlData>(json['localteam_dl_data']);
	if (localteamDlData != null) {
		fixturesData.localteamDlData = localteamDlData;
	}
	final FixturesDataVisitorteamDlData? visitorteamDlData = jsonConvert.convert<FixturesDataVisitorteamDlData>(json['visitorteam_dl_data']);
	if (visitorteamDlData != null) {
		fixturesData.visitorteamDlData = visitorteamDlData;
	}
	final dynamic rpcOvers = jsonConvert.convert<dynamic>(json['rpc_overs']);
	if (rpcOvers != null) {
		fixturesData.rpcOvers = rpcOvers;
	}
	final dynamic rpcTarget = jsonConvert.convert<dynamic>(json['rpc_target']);
	if (rpcTarget != null) {
		fixturesData.rpcTarget = rpcTarget;
	}
	final List<dynamic>? weatherReport = jsonConvert.convertListNotNull<dynamic>(json['weather_report']);
	if (weatherReport != null) {
		fixturesData.weatherReport = weatherReport;
	}
	final FixturesDataLocalteam? localteam = jsonConvert.convert<FixturesDataLocalteam>(json['localteam']);
	if (localteam != null) {
		fixturesData.localteam = localteam;
	}
	final FixturesDataVisitorteam? visitorteam = jsonConvert.convert<FixturesDataVisitorteam>(json['visitorteam']);
	if (visitorteam != null) {
		fixturesData.visitorteam = visitorteam;
	}
	final List<FixturesDataBatting>? batting = jsonConvert.convertListNotNull<FixturesDataBatting>(json['batting']);
	if (batting != null) {
		fixturesData.batting = batting;
	}
	final List<FixturesDataBowling>? bowling = jsonConvert.convertListNotNull<FixturesDataBowling>(json['bowling']);
	if (bowling != null) {
		fixturesData.bowling = bowling;
	}
	final List<FixturesDataRuns>? runs = jsonConvert.convertListNotNull<FixturesDataRuns>(json['runs']);
	if (runs != null) {
		fixturesData.runs = runs;
	}
	final List<FixturesDataLineup>? lineup = jsonConvert.convertListNotNull<FixturesDataLineup>(json['lineup']);
	if (lineup != null) {
		fixturesData.lineup = lineup;
	}
	final FixturesDataManofmatch? manofmatch = jsonConvert.convert<FixturesDataManofmatch>(json['manofmatch']);
	if (manofmatch != null) {
		fixturesData.manofmatch = manofmatch;
	}
	final FixturesDataWinnerteam? winnerteam = jsonConvert.convert<FixturesDataWinnerteam>(json['winnerteam']);
	if (winnerteam != null) {
		fixturesData.winnerteam = winnerteam;
	}
	final FixturesDataVenue? venue = jsonConvert.convert<FixturesDataVenue>(json['venue']);
	if (venue != null) {
		fixturesData.venue = venue;
	}
	return fixturesData;
}

Map<String, dynamic> $FixturesDataToJson(FixturesData entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['resource'] = entity.resource;
	data['id'] = entity.id;
	data['league_id'] = entity.leagueId;
	data['season_id'] = entity.seasonId;
	data['stage_id'] = entity.stageId;
	data['round'] = entity.round;
	data['localteam_id'] = entity.localteamId;
	data['visitorteam_id'] = entity.visitorteamId;
	data['starting_at'] = entity.startingAt;
	data['type'] = entity.type;
	data['live'] = entity.live;
	data['status'] = entity.status;
	data['last_period'] = entity.lastPeriod;
	data['note'] = entity.note;
	data['venue_id'] = entity.venueId;
	data['toss_won_team_id'] = entity.tossWonTeamId;
	data['winner_team_id'] = entity.winnerTeamId;
	data['draw_noresult'] = entity.drawNoresult;
	data['first_umpire_id'] = entity.firstUmpireId;
	data['second_umpire_id'] = entity.secondUmpireId;
	data['tv_umpire_id'] = entity.tvUmpireId;
	data['referee_id'] = entity.refereeId;
	data['man_of_match_id'] = entity.manOfMatchId;
	data['man_of_series_id'] = entity.manOfSeriesId;
	data['total_overs_played'] = entity.totalOversPlayed;
	data['elected'] = entity.elected;
	data['super_over'] = entity.superOver;
	data['follow_on'] = entity.followOn;
	data['localteam_dl_data'] = entity.localteamDlData?.toJson();
	data['visitorteam_dl_data'] = entity.visitorteamDlData?.toJson();
	data['rpc_overs'] = entity.rpcOvers;
	data['rpc_target'] = entity.rpcTarget;
	data['weather_report'] =  entity.weatherReport;
	data['localteam'] = entity.localteam?.toJson();
	data['visitorteam'] = entity.visitorteam?.toJson();
	data['batting'] =  entity.batting?.map((v) => v.toJson()).toList();
	data['bowling'] =  entity.bowling?.map((v) => v.toJson()).toList();
	data['runs'] =  entity.runs?.map((v) => v.toJson()).toList();
	data['lineup'] =  entity.lineup?.map((v) => v.toJson()).toList();
	data['manofmatch'] = entity.manofmatch?.toJson();
	data['winnerteam'] = entity.winnerteam?.toJson();
	data['venue'] = entity.venue?.toJson();
	return data;
}

FixturesDataLocalteamDlData $FixturesDataLocalteamDlDataFromJson(Map<String, dynamic> json) {
	final FixturesDataLocalteamDlData fixturesDataLocalteamDlData = FixturesDataLocalteamDlData();
	final dynamic score = jsonConvert.convert<dynamic>(json['score']);
	if (score != null) {
		fixturesDataLocalteamDlData.score = score;
	}
	final dynamic overs = jsonConvert.convert<dynamic>(json['overs']);
	if (overs != null) {
		fixturesDataLocalteamDlData.overs = overs;
	}
	final dynamic wicketsOut = jsonConvert.convert<dynamic>(json['wickets_out']);
	if (wicketsOut != null) {
		fixturesDataLocalteamDlData.wicketsOut = wicketsOut;
	}
	return fixturesDataLocalteamDlData;
}

Map<String, dynamic> $FixturesDataLocalteamDlDataToJson(FixturesDataLocalteamDlData entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['score'] = entity.score;
	data['overs'] = entity.overs;
	data['wickets_out'] = entity.wicketsOut;
	return data;
}

FixturesDataVisitorteamDlData $FixturesDataVisitorteamDlDataFromJson(Map<String, dynamic> json) {
	final FixturesDataVisitorteamDlData fixturesDataVisitorteamDlData = FixturesDataVisitorteamDlData();
	final dynamic score = jsonConvert.convert<dynamic>(json['score']);
	if (score != null) {
		fixturesDataVisitorteamDlData.score = score;
	}
	final dynamic overs = jsonConvert.convert<dynamic>(json['overs']);
	if (overs != null) {
		fixturesDataVisitorteamDlData.overs = overs;
	}
	final dynamic wicketsOut = jsonConvert.convert<dynamic>(json['wickets_out']);
	if (wicketsOut != null) {
		fixturesDataVisitorteamDlData.wicketsOut = wicketsOut;
	}
	return fixturesDataVisitorteamDlData;
}

Map<String, dynamic> $FixturesDataVisitorteamDlDataToJson(FixturesDataVisitorteamDlData entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['score'] = entity.score;
	data['overs'] = entity.overs;
	data['wickets_out'] = entity.wicketsOut;
	return data;
}

FixturesDataLocalteam $FixturesDataLocalteamFromJson(Map<String, dynamic> json) {
	final FixturesDataLocalteam fixturesDataLocalteam = FixturesDataLocalteam();
	final String? resource = jsonConvert.convert<String>(json['resource']);
	if (resource != null) {
		fixturesDataLocalteam.resource = resource;
	}
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		fixturesDataLocalteam.id = id;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		fixturesDataLocalteam.name = name;
	}
	final String? code = jsonConvert.convert<String>(json['code']);
	if (code != null) {
		fixturesDataLocalteam.code = code;
	}
	final String? imagePath = jsonConvert.convert<String>(json['image_path']);
	if (imagePath != null) {
		fixturesDataLocalteam.imagePath = imagePath;
	}
	final int? countryId = jsonConvert.convert<int>(json['country_id']);
	if (countryId != null) {
		fixturesDataLocalteam.countryId = countryId;
	}
	final bool? nationalTeam = jsonConvert.convert<bool>(json['national_team']);
	if (nationalTeam != null) {
		fixturesDataLocalteam.nationalTeam = nationalTeam;
	}
	final String? updatedAt = jsonConvert.convert<String>(json['updated_at']);
	if (updatedAt != null) {
		fixturesDataLocalteam.updatedAt = updatedAt;
	}
	return fixturesDataLocalteam;
}

Map<String, dynamic> $FixturesDataLocalteamToJson(FixturesDataLocalteam entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['resource'] = entity.resource;
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['code'] = entity.code;
	data['image_path'] = entity.imagePath;
	data['country_id'] = entity.countryId;
	data['national_team'] = entity.nationalTeam;
	data['updated_at'] = entity.updatedAt;
	return data;
}

FixturesDataVisitorteam $FixturesDataVisitorteamFromJson(Map<String, dynamic> json) {
	final FixturesDataVisitorteam fixturesDataVisitorteam = FixturesDataVisitorteam();
	final String? resource = jsonConvert.convert<String>(json['resource']);
	if (resource != null) {
		fixturesDataVisitorteam.resource = resource;
	}
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		fixturesDataVisitorteam.id = id;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		fixturesDataVisitorteam.name = name;
	}
	final String? code = jsonConvert.convert<String>(json['code']);
	if (code != null) {
		fixturesDataVisitorteam.code = code;
	}
	final String? imagePath = jsonConvert.convert<String>(json['image_path']);
	if (imagePath != null) {
		fixturesDataVisitorteam.imagePath = imagePath;
	}
	final int? countryId = jsonConvert.convert<int>(json['country_id']);
	if (countryId != null) {
		fixturesDataVisitorteam.countryId = countryId;
	}
	final bool? nationalTeam = jsonConvert.convert<bool>(json['national_team']);
	if (nationalTeam != null) {
		fixturesDataVisitorteam.nationalTeam = nationalTeam;
	}
	final String? updatedAt = jsonConvert.convert<String>(json['updated_at']);
	if (updatedAt != null) {
		fixturesDataVisitorteam.updatedAt = updatedAt;
	}
	return fixturesDataVisitorteam;
}

Map<String, dynamic> $FixturesDataVisitorteamToJson(FixturesDataVisitorteam entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['resource'] = entity.resource;
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['code'] = entity.code;
	data['image_path'] = entity.imagePath;
	data['country_id'] = entity.countryId;
	data['national_team'] = entity.nationalTeam;
	data['updated_at'] = entity.updatedAt;
	return data;
}

FixturesDataBatting $FixturesDataBattingFromJson(Map<String, dynamic> json) {
	final FixturesDataBatting fixturesDataBatting = FixturesDataBatting();
	final String? resource = jsonConvert.convert<String>(json['resource']);
	if (resource != null) {
		fixturesDataBatting.resource = resource;
	}
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		fixturesDataBatting.id = id;
	}
	final int? sort = jsonConvert.convert<int>(json['sort']);
	if (sort != null) {
		fixturesDataBatting.sort = sort;
	}
	final int? fixtureId = jsonConvert.convert<int>(json['fixture_id']);
	if (fixtureId != null) {
		fixturesDataBatting.fixtureId = fixtureId;
	}
	final int? teamId = jsonConvert.convert<int>(json['team_id']);
	if (teamId != null) {
		fixturesDataBatting.teamId = teamId;
	}
	final bool? active = jsonConvert.convert<bool>(json['active']);
	if (active != null) {
		fixturesDataBatting.active = active;
	}
	final String? scoreboard = jsonConvert.convert<String>(json['scoreboard']);
	if (scoreboard != null) {
		fixturesDataBatting.scoreboard = scoreboard;
	}
	final int? playerId = jsonConvert.convert<int>(json['player_id']);
	if (playerId != null) {
		fixturesDataBatting.playerId = playerId;
	}
	final int? ball = jsonConvert.convert<int>(json['ball']);
	if (ball != null) {
		fixturesDataBatting.ball = ball;
	}
	final int? scoreId = jsonConvert.convert<int>(json['score_id']);
	if (scoreId != null) {
		fixturesDataBatting.scoreId = scoreId;
	}
	final int? score = jsonConvert.convert<int>(json['score']);
	if (score != null) {
		fixturesDataBatting.score = score;
	}
	final int? fourX = jsonConvert.convert<int>(json['four_x']);
	if (fourX != null) {
		fixturesDataBatting.fourX = fourX;
	}
	final int? sixX = jsonConvert.convert<int>(json['six_x']);
	if (sixX != null) {
		fixturesDataBatting.sixX = sixX;
	}
	final int? catchStumpPlayerId = jsonConvert.convert<int>(json['catch_stump_player_id']);
	if (catchStumpPlayerId != null) {
		fixturesDataBatting.catchStumpPlayerId = catchStumpPlayerId;
	}
	final dynamic runoutById = jsonConvert.convert<dynamic>(json['runout_by_id']);
	if (runoutById != null) {
		fixturesDataBatting.runoutById = runoutById;
	}
	final dynamic batsmanoutId = jsonConvert.convert<dynamic>(json['batsmanout_id']);
	if (batsmanoutId != null) {
		fixturesDataBatting.batsmanoutId = batsmanoutId;
	}
	final int? bowlingPlayerId = jsonConvert.convert<int>(json['bowling_player_id']);
	if (bowlingPlayerId != null) {
		fixturesDataBatting.bowlingPlayerId = bowlingPlayerId;
	}
	final int? fowScore = jsonConvert.convert<int>(json['fow_score']);
	if (fowScore != null) {
		fixturesDataBatting.fowScore = fowScore;
	}
	final double? fowBalls = jsonConvert.convert<double>(json['fow_balls']);
	if (fowBalls != null) {
		fixturesDataBatting.fowBalls = fowBalls;
	}
	final double? rate = jsonConvert.convert<double>(json['rate']);
	if (rate != null) {
		fixturesDataBatting.rate = rate;
	}
	final String? updatedAt = jsonConvert.convert<String>(json['updated_at']);
	if (updatedAt != null) {
		fixturesDataBatting.updatedAt = updatedAt;
	}
	return fixturesDataBatting;
}

Map<String, dynamic> $FixturesDataBattingToJson(FixturesDataBatting entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['resource'] = entity.resource;
	data['id'] = entity.id;
	data['sort'] = entity.sort;
	data['fixture_id'] = entity.fixtureId;
	data['team_id'] = entity.teamId;
	data['active'] = entity.active;
	data['scoreboard'] = entity.scoreboard;
	data['player_id'] = entity.playerId;
	data['ball'] = entity.ball;
	data['score_id'] = entity.scoreId;
	data['score'] = entity.score;
	data['four_x'] = entity.fourX;
	data['six_x'] = entity.sixX;
	data['catch_stump_player_id'] = entity.catchStumpPlayerId;
	data['runout_by_id'] = entity.runoutById;
	data['batsmanout_id'] = entity.batsmanoutId;
	data['bowling_player_id'] = entity.bowlingPlayerId;
	data['fow_score'] = entity.fowScore;
	data['fow_balls'] = entity.fowBalls;
	data['rate'] = entity.rate;
	data['updated_at'] = entity.updatedAt;
	return data;
}

FixturesDataBowling $FixturesDataBowlingFromJson(Map<String, dynamic> json) {
	final FixturesDataBowling fixturesDataBowling = FixturesDataBowling();
	final String? resource = jsonConvert.convert<String>(json['resource']);
	if (resource != null) {
		fixturesDataBowling.resource = resource;
	}
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		fixturesDataBowling.id = id;
	}
	final int? sort = jsonConvert.convert<int>(json['sort']);
	if (sort != null) {
		fixturesDataBowling.sort = sort;
	}
	final int? fixtureId = jsonConvert.convert<int>(json['fixture_id']);
	if (fixtureId != null) {
		fixturesDataBowling.fixtureId = fixtureId;
	}
	final int? teamId = jsonConvert.convert<int>(json['team_id']);
	if (teamId != null) {
		fixturesDataBowling.teamId = teamId;
	}
	final bool? active = jsonConvert.convert<bool>(json['active']);
	if (active != null) {
		fixturesDataBowling.active = active;
	}
	final String? scoreboard = jsonConvert.convert<String>(json['scoreboard']);
	if (scoreboard != null) {
		fixturesDataBowling.scoreboard = scoreboard;
	}
	final int? playerId = jsonConvert.convert<int>(json['player_id']);
	if (playerId != null) {
		fixturesDataBowling.playerId = playerId;
	}
	final int? overs = jsonConvert.convert<int>(json['overs']);
	if (overs != null) {
		fixturesDataBowling.overs = overs;
	}
	final int? medians = jsonConvert.convert<int>(json['medians']);
	if (medians != null) {
		fixturesDataBowling.medians = medians;
	}
	final int? runs = jsonConvert.convert<int>(json['runs']);
	if (runs != null) {
		fixturesDataBowling.runs = runs;
	}
	final int? wickets = jsonConvert.convert<int>(json['wickets']);
	if (wickets != null) {
		fixturesDataBowling.wickets = wickets;
	}
	final int? wide = jsonConvert.convert<int>(json['wide']);
	if (wide != null) {
		fixturesDataBowling.wide = wide;
	}
	final int? noball = jsonConvert.convert<int>(json['noball']);
	if (noball != null) {
		fixturesDataBowling.noball = noball;
	}
	final double? rate = jsonConvert.convert<double>(json['rate']);
	if (rate != null) {
		fixturesDataBowling.rate = rate;
	}
	final String? updatedAt = jsonConvert.convert<String>(json['updated_at']);
	if (updatedAt != null) {
		fixturesDataBowling.updatedAt = updatedAt;
	}
	return fixturesDataBowling;
}

Map<String, dynamic> $FixturesDataBowlingToJson(FixturesDataBowling entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['resource'] = entity.resource;
	data['id'] = entity.id;
	data['sort'] = entity.sort;
	data['fixture_id'] = entity.fixtureId;
	data['team_id'] = entity.teamId;
	data['active'] = entity.active;
	data['scoreboard'] = entity.scoreboard;
	data['player_id'] = entity.playerId;
	data['overs'] = entity.overs;
	data['medians'] = entity.medians;
	data['runs'] = entity.runs;
	data['wickets'] = entity.wickets;
	data['wide'] = entity.wide;
	data['noball'] = entity.noball;
	data['rate'] = entity.rate;
	data['updated_at'] = entity.updatedAt;
	return data;
}

FixturesDataRuns $FixturesDataRunsFromJson(Map<String, dynamic> json) {
	final FixturesDataRuns fixturesDataRuns = FixturesDataRuns();
	final String? resource = jsonConvert.convert<String>(json['resource']);
	if (resource != null) {
		fixturesDataRuns.resource = resource;
	}
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		fixturesDataRuns.id = id;
	}
	final int? fixtureId = jsonConvert.convert<int>(json['fixture_id']);
	if (fixtureId != null) {
		fixturesDataRuns.fixtureId = fixtureId;
	}
	final int? teamId = jsonConvert.convert<int>(json['team_id']);
	if (teamId != null) {
		fixturesDataRuns.teamId = teamId;
	}
	final int? inning = jsonConvert.convert<int>(json['inning']);
	if (inning != null) {
		fixturesDataRuns.inning = inning;
	}
	final int? score = jsonConvert.convert<int>(json['score']);
	if (score != null) {
		fixturesDataRuns.score = score;
	}
	final int? wickets = jsonConvert.convert<int>(json['wickets']);
	if (wickets != null) {
		fixturesDataRuns.wickets = wickets;
	}
	final int? overs = jsonConvert.convert<int>(json['overs']);
	if (overs != null) {
		fixturesDataRuns.overs = overs;
	}
	final String? pp1 = jsonConvert.convert<String>(json['pp1']);
	if (pp1 != null) {
		fixturesDataRuns.pp1 = pp1;
	}
	final dynamic pp2 = jsonConvert.convert<dynamic>(json['pp2']);
	if (pp2 != null) {
		fixturesDataRuns.pp2 = pp2;
	}
	final dynamic pp3 = jsonConvert.convert<dynamic>(json['pp3']);
	if (pp3 != null) {
		fixturesDataRuns.pp3 = pp3;
	}
	final String? updatedAt = jsonConvert.convert<String>(json['updated_at']);
	if (updatedAt != null) {
		fixturesDataRuns.updatedAt = updatedAt;
	}
	return fixturesDataRuns;
}

Map<String, dynamic> $FixturesDataRunsToJson(FixturesDataRuns entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['resource'] = entity.resource;
	data['id'] = entity.id;
	data['fixture_id'] = entity.fixtureId;
	data['team_id'] = entity.teamId;
	data['inning'] = entity.inning;
	data['score'] = entity.score;
	data['wickets'] = entity.wickets;
	data['overs'] = entity.overs;
	data['pp1'] = entity.pp1;
	data['pp2'] = entity.pp2;
	data['pp3'] = entity.pp3;
	data['updated_at'] = entity.updatedAt;
	return data;
}

FixturesDataLineup $FixturesDataLineupFromJson(Map<String, dynamic> json) {
	final FixturesDataLineup fixturesDataLineup = FixturesDataLineup();
	final String? resource = jsonConvert.convert<String>(json['resource']);
	if (resource != null) {
		fixturesDataLineup.resource = resource;
	}
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		fixturesDataLineup.id = id;
	}
	final int? countryId = jsonConvert.convert<int>(json['country_id']);
	if (countryId != null) {
		fixturesDataLineup.countryId = countryId;
	}
	final String? firstname = jsonConvert.convert<String>(json['firstname']);
	if (firstname != null) {
		fixturesDataLineup.firstname = firstname;
	}
	final String? lastname = jsonConvert.convert<String>(json['lastname']);
	if (lastname != null) {
		fixturesDataLineup.lastname = lastname;
	}
	final String? fullname = jsonConvert.convert<String>(json['fullname']);
	if (fullname != null) {
		fixturesDataLineup.fullname = fullname;
	}
	final String? imagePath = jsonConvert.convert<String>(json['image_path']);
	if (imagePath != null) {
		fixturesDataLineup.imagePath = imagePath;
	}
	final String? dateofbirth = jsonConvert.convert<String>(json['dateofbirth']);
	if (dateofbirth != null) {
		fixturesDataLineup.dateofbirth = dateofbirth;
	}
	final String? gender = jsonConvert.convert<String>(json['gender']);
	if (gender != null) {
		fixturesDataLineup.gender = gender;
	}
	final String? battingstyle = jsonConvert.convert<String>(json['battingstyle']);
	if (battingstyle != null) {
		fixturesDataLineup.battingstyle = battingstyle;
	}
	final String? bowlingstyle = jsonConvert.convert<String>(json['bowlingstyle']);
	if (bowlingstyle != null) {
		fixturesDataLineup.bowlingstyle = bowlingstyle;
	}
	final FixturesDataLineupPosition? position = jsonConvert.convert<FixturesDataLineupPosition>(json['position']);
	if (position != null) {
		fixturesDataLineup.position = position;
	}
	final String? updatedAt = jsonConvert.convert<String>(json['updated_at']);
	if (updatedAt != null) {
		fixturesDataLineup.updatedAt = updatedAt;
	}
	final FixturesDataLineupLineup? lineup = jsonConvert.convert<FixturesDataLineupLineup>(json['lineup']);
	if (lineup != null) {
		fixturesDataLineup.lineup = lineup;
	}
	return fixturesDataLineup;
}

Map<String, dynamic> $FixturesDataLineupToJson(FixturesDataLineup entity) {
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
	data['updated_at'] = entity.updatedAt;
	data['lineup'] = entity.lineup?.toJson();
	return data;
}

FixturesDataLineupPosition $FixturesDataLineupPositionFromJson(Map<String, dynamic> json) {
	final FixturesDataLineupPosition fixturesDataLineupPosition = FixturesDataLineupPosition();
	final String? resource = jsonConvert.convert<String>(json['resource']);
	if (resource != null) {
		fixturesDataLineupPosition.resource = resource;
	}
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		fixturesDataLineupPosition.id = id;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		fixturesDataLineupPosition.name = name;
	}
	return fixturesDataLineupPosition;
}

Map<String, dynamic> $FixturesDataLineupPositionToJson(FixturesDataLineupPosition entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['resource'] = entity.resource;
	data['id'] = entity.id;
	data['name'] = entity.name;
	return data;
}

FixturesDataLineupLineup $FixturesDataLineupLineupFromJson(Map<String, dynamic> json) {
	final FixturesDataLineupLineup fixturesDataLineupLineup = FixturesDataLineupLineup();
	final int? teamId = jsonConvert.convert<int>(json['team_id']);
	if (teamId != null) {
		fixturesDataLineupLineup.teamId = teamId;
	}
	final bool? captain = jsonConvert.convert<bool>(json['captain']);
	if (captain != null) {
		fixturesDataLineupLineup.captain = captain;
	}
	final bool? wicketkeeper = jsonConvert.convert<bool>(json['wicketkeeper']);
	if (wicketkeeper != null) {
		fixturesDataLineupLineup.wicketkeeper = wicketkeeper;
	}
	final bool? substitution = jsonConvert.convert<bool>(json['substitution']);
	if (substitution != null) {
		fixturesDataLineupLineup.substitution = substitution;
	}
	return fixturesDataLineupLineup;
}

Map<String, dynamic> $FixturesDataLineupLineupToJson(FixturesDataLineupLineup entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['team_id'] = entity.teamId;
	data['captain'] = entity.captain;
	data['wicketkeeper'] = entity.wicketkeeper;
	data['substitution'] = entity.substitution;
	return data;
}

FixturesDataManofmatch $FixturesDataManofmatchFromJson(Map<String, dynamic> json) {
	final FixturesDataManofmatch fixturesDataManofmatch = FixturesDataManofmatch();
	final String? resource = jsonConvert.convert<String>(json['resource']);
	if (resource != null) {
		fixturesDataManofmatch.resource = resource;
	}
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		fixturesDataManofmatch.id = id;
	}
	final int? countryId = jsonConvert.convert<int>(json['country_id']);
	if (countryId != null) {
		fixturesDataManofmatch.countryId = countryId;
	}
	final String? firstname = jsonConvert.convert<String>(json['firstname']);
	if (firstname != null) {
		fixturesDataManofmatch.firstname = firstname;
	}
	final String? lastname = jsonConvert.convert<String>(json['lastname']);
	if (lastname != null) {
		fixturesDataManofmatch.lastname = lastname;
	}
	final String? fullname = jsonConvert.convert<String>(json['fullname']);
	if (fullname != null) {
		fixturesDataManofmatch.fullname = fullname;
	}
	final String? imagePath = jsonConvert.convert<String>(json['image_path']);
	if (imagePath != null) {
		fixturesDataManofmatch.imagePath = imagePath;
	}
	final String? dateofbirth = jsonConvert.convert<String>(json['dateofbirth']);
	if (dateofbirth != null) {
		fixturesDataManofmatch.dateofbirth = dateofbirth;
	}
	final String? gender = jsonConvert.convert<String>(json['gender']);
	if (gender != null) {
		fixturesDataManofmatch.gender = gender;
	}
	final String? battingstyle = jsonConvert.convert<String>(json['battingstyle']);
	if (battingstyle != null) {
		fixturesDataManofmatch.battingstyle = battingstyle;
	}
	final String? bowlingstyle = jsonConvert.convert<String>(json['bowlingstyle']);
	if (bowlingstyle != null) {
		fixturesDataManofmatch.bowlingstyle = bowlingstyle;
	}
	final FixturesDataManofmatchPosition? position = jsonConvert.convert<FixturesDataManofmatchPosition>(json['position']);
	if (position != null) {
		fixturesDataManofmatch.position = position;
	}
	final String? updatedAt = jsonConvert.convert<String>(json['updated_at']);
	if (updatedAt != null) {
		fixturesDataManofmatch.updatedAt = updatedAt;
	}
	return fixturesDataManofmatch;
}

Map<String, dynamic> $FixturesDataManofmatchToJson(FixturesDataManofmatch entity) {
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
	data['updated_at'] = entity.updatedAt;
	return data;
}

FixturesDataManofmatchPosition $FixturesDataManofmatchPositionFromJson(Map<String, dynamic> json) {
	final FixturesDataManofmatchPosition fixturesDataManofmatchPosition = FixturesDataManofmatchPosition();
	final String? resource = jsonConvert.convert<String>(json['resource']);
	if (resource != null) {
		fixturesDataManofmatchPosition.resource = resource;
	}
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		fixturesDataManofmatchPosition.id = id;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		fixturesDataManofmatchPosition.name = name;
	}
	return fixturesDataManofmatchPosition;
}

Map<String, dynamic> $FixturesDataManofmatchPositionToJson(FixturesDataManofmatchPosition entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['resource'] = entity.resource;
	data['id'] = entity.id;
	data['name'] = entity.name;
	return data;
}

FixturesDataWinnerteam $FixturesDataWinnerteamFromJson(Map<String, dynamic> json) {
	final FixturesDataWinnerteam fixturesDataWinnerteam = FixturesDataWinnerteam();
	final String? resource = jsonConvert.convert<String>(json['resource']);
	if (resource != null) {
		fixturesDataWinnerteam.resource = resource;
	}
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		fixturesDataWinnerteam.id = id;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		fixturesDataWinnerteam.name = name;
	}
	final String? code = jsonConvert.convert<String>(json['code']);
	if (code != null) {
		fixturesDataWinnerteam.code = code;
	}
	final String? imagePath = jsonConvert.convert<String>(json['image_path']);
	if (imagePath != null) {
		fixturesDataWinnerteam.imagePath = imagePath;
	}
	final int? countryId = jsonConvert.convert<int>(json['country_id']);
	if (countryId != null) {
		fixturesDataWinnerteam.countryId = countryId;
	}
	final bool? nationalTeam = jsonConvert.convert<bool>(json['national_team']);
	if (nationalTeam != null) {
		fixturesDataWinnerteam.nationalTeam = nationalTeam;
	}
	final String? updatedAt = jsonConvert.convert<String>(json['updated_at']);
	if (updatedAt != null) {
		fixturesDataWinnerteam.updatedAt = updatedAt;
	}
	return fixturesDataWinnerteam;
}

Map<String, dynamic> $FixturesDataWinnerteamToJson(FixturesDataWinnerteam entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['resource'] = entity.resource;
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['code'] = entity.code;
	data['image_path'] = entity.imagePath;
	data['country_id'] = entity.countryId;
	data['national_team'] = entity.nationalTeam;
	data['updated_at'] = entity.updatedAt;
	return data;
}

FixturesDataVenue $FixturesDataVenueFromJson(Map<String, dynamic> json) {
	final FixturesDataVenue fixturesDataVenue = FixturesDataVenue();
	final String? resource = jsonConvert.convert<String>(json['resource']);
	if (resource != null) {
		fixturesDataVenue.resource = resource;
	}
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		fixturesDataVenue.id = id;
	}
	final int? countryId = jsonConvert.convert<int>(json['country_id']);
	if (countryId != null) {
		fixturesDataVenue.countryId = countryId;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		fixturesDataVenue.name = name;
	}
	final String? city = jsonConvert.convert<String>(json['city']);
	if (city != null) {
		fixturesDataVenue.city = city;
	}
	final String? imagePath = jsonConvert.convert<String>(json['image_path']);
	if (imagePath != null) {
		fixturesDataVenue.imagePath = imagePath;
	}
	final int? capacity = jsonConvert.convert<int>(json['capacity']);
	if (capacity != null) {
		fixturesDataVenue.capacity = capacity;
	}
	final bool? floodlight = jsonConvert.convert<bool>(json['floodlight']);
	if (floodlight != null) {
		fixturesDataVenue.floodlight = floodlight;
	}
	final String? updatedAt = jsonConvert.convert<String>(json['updated_at']);
	if (updatedAt != null) {
		fixturesDataVenue.updatedAt = updatedAt;
	}
	return fixturesDataVenue;
}

Map<String, dynamic> $FixturesDataVenueToJson(FixturesDataVenue entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['resource'] = entity.resource;
	data['id'] = entity.id;
	data['country_id'] = entity.countryId;
	data['name'] = entity.name;
	data['city'] = entity.city;
	data['image_path'] = entity.imagePath;
	data['capacity'] = entity.capacity;
	data['floodlight'] = entity.floodlight;
	data['updated_at'] = entity.updatedAt;
	return data;
}

FixturesLinks $FixturesLinksFromJson(Map<String, dynamic> json) {
	final FixturesLinks fixturesLinks = FixturesLinks();
	final String? first = jsonConvert.convert<String>(json['first']);
	if (first != null) {
		fixturesLinks.first = first;
	}
	final String? last = jsonConvert.convert<String>(json['last']);
	if (last != null) {
		fixturesLinks.last = last;
	}
	final dynamic prev = jsonConvert.convert<dynamic>(json['prev']);
	if (prev != null) {
		fixturesLinks.prev = prev;
	}
	final String? next = jsonConvert.convert<String>(json['next']);
	if (next != null) {
		fixturesLinks.next = next;
	}
	return fixturesLinks;
}

Map<String, dynamic> $FixturesLinksToJson(FixturesLinks entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['first'] = entity.first;
	data['last'] = entity.last;
	data['prev'] = entity.prev;
	data['next'] = entity.next;
	return data;
}

FixturesMeta $FixturesMetaFromJson(Map<String, dynamic> json) {
	final FixturesMeta fixturesMeta = FixturesMeta();
	final int? currentPage = jsonConvert.convert<int>(json['current_page']);
	if (currentPage != null) {
		fixturesMeta.currentPage = currentPage;
	}
	final int? from = jsonConvert.convert<int>(json['from']);
	if (from != null) {
		fixturesMeta.from = from;
	}
	final int? lastPage = jsonConvert.convert<int>(json['last_page']);
	if (lastPage != null) {
		fixturesMeta.lastPage = lastPage;
	}
	final List<FixturesMetaLinks>? links = jsonConvert.convertListNotNull<FixturesMetaLinks>(json['links']);
	if (links != null) {
		fixturesMeta.links = links;
	}
	final String? path = jsonConvert.convert<String>(json['path']);
	if (path != null) {
		fixturesMeta.path = path;
	}
	final int? perPage = jsonConvert.convert<int>(json['per_page']);
	if (perPage != null) {
		fixturesMeta.perPage = perPage;
	}
	final int? to = jsonConvert.convert<int>(json['to']);
	if (to != null) {
		fixturesMeta.to = to;
	}
	final int? total = jsonConvert.convert<int>(json['total']);
	if (total != null) {
		fixturesMeta.total = total;
	}
	return fixturesMeta;
}

Map<String, dynamic> $FixturesMetaToJson(FixturesMeta entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['current_page'] = entity.currentPage;
	data['from'] = entity.from;
	data['last_page'] = entity.lastPage;
	data['links'] =  entity.links?.map((v) => v.toJson()).toList();
	data['path'] = entity.path;
	data['per_page'] = entity.perPage;
	data['to'] = entity.to;
	data['total'] = entity.total;
	return data;
}

FixturesMetaLinks $FixturesMetaLinksFromJson(Map<String, dynamic> json) {
	final FixturesMetaLinks fixturesMetaLinks = FixturesMetaLinks();
	final String? url = jsonConvert.convert<String>(json['url']);
	if (url != null) {
		fixturesMetaLinks.url = url;
	}
	final String? label = jsonConvert.convert<String>(json['label']);
	if (label != null) {
		fixturesMetaLinks.label = label;
	}
	final bool? active = jsonConvert.convert<bool>(json['active']);
	if (active != null) {
		fixturesMetaLinks.active = active;
	}
	return fixturesMetaLinks;
}

Map<String, dynamic> $FixturesMetaLinksToJson(FixturesMetaLinks entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['url'] = entity.url;
	data['label'] = entity.label;
	data['active'] = entity.active;
	return data;
}