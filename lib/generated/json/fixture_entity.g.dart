import 'package:cricjass/generated/json/base/json_convert_content.dart';
import 'package:cricjass/models/fixture_entity.dart';

FixtureEntity $FixtureEntityFromJson(Map<String, dynamic> json) {
	final FixtureEntity fixtureEntity = FixtureEntity();
	final List<FixtureData>? data = jsonConvert.convertListNotNull<FixtureData>(json['data']);
	if (data != null) {
		fixtureEntity.data = data;
	}
	final FixtureLinks? links = jsonConvert.convert<FixtureLinks>(json['links']);
	if (links != null) {
		fixtureEntity.links = links;
	}
	final FixtureMeta? meta = jsonConvert.convert<FixtureMeta>(json['meta']);
	if (meta != null) {
		fixtureEntity.meta = meta;
	}
	return fixtureEntity;
}

Map<String, dynamic> $FixtureEntityToJson(FixtureEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['data'] =  entity.data.map((v) => v.toJson()).toList();
	data['links'] = entity.links.toJson();
	data['meta'] = entity.meta.toJson();
	return data;
}

FixtureData $FixtureDataFromJson(Map<String, dynamic> json) {
	final FixtureData fixtureData = FixtureData();
	final String? resource = jsonConvert.convert<String>(json['resource']);
	if (resource != null) {
		fixtureData.resource = resource;
	}
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		fixtureData.id = id;
	}
	final int? leagueId = jsonConvert.convert<int>(json['league_id']);
	if (leagueId != null) {
		fixtureData.leagueId = leagueId;
	}
	final int? seasonId = jsonConvert.convert<int>(json['season_id']);
	if (seasonId != null) {
		fixtureData.seasonId = seasonId;
	}
	final int? stageId = jsonConvert.convert<int>(json['stage_id']);
	if (stageId != null) {
		fixtureData.stageId = stageId;
	}
	final String? round = jsonConvert.convert<String>(json['round']);
	if (round != null) {
		fixtureData.round = round;
	}
	final int? localteamId = jsonConvert.convert<int>(json['localteam_id']);
	if (localteamId != null) {
		fixtureData.localteamId = localteamId;
	}
	final int? visitorteamId = jsonConvert.convert<int>(json['visitorteam_id']);
	if (visitorteamId != null) {
		fixtureData.visitorteamId = visitorteamId;
	}
	final String? startingAt = jsonConvert.convert<String>(json['starting_at']);
	if (startingAt != null) {
		fixtureData.startingAt = startingAt;
	}
	final String? type = jsonConvert.convert<String>(json['type']);
	if (type != null) {
		fixtureData.type = type;
	}
	final bool? live = jsonConvert.convert<bool>(json['live']);
	if (live != null) {
		fixtureData.live = live;
	}
	final String? status = jsonConvert.convert<String>(json['status']);
	if (status != null) {
		fixtureData.status = status;
	}
	final dynamic lastPeriod = jsonConvert.convert<dynamic>(json['last_period']);
	if (lastPeriod != null) {
		fixtureData.lastPeriod = lastPeriod;
	}
	final String? note = jsonConvert.convert<String>(json['note']);
	if (note != null) {
		fixtureData.note = note;
	}
	final int? venueId = jsonConvert.convert<int>(json['venue_id']);
	if (venueId != null) {
		fixtureData.venueId = venueId;
	}
	final int? tossWonTeamId = jsonConvert.convert<int>(json['toss_won_team_id']);
	if (tossWonTeamId != null) {
		fixtureData.tossWonTeamId = tossWonTeamId;
	}
	final int? winnerTeamId = jsonConvert.convert<int>(json['winner_team_id']);
	if (winnerTeamId != null) {
		fixtureData.winnerTeamId = winnerTeamId;
	}
	final String? drawNoresult = jsonConvert.convert<String>(json['draw_noresult']);
	if (drawNoresult != null) {
		fixtureData.drawNoresult = drawNoresult;
	}
	final int? firstUmpireId = jsonConvert.convert<int>(json['first_umpire_id']);
	if (firstUmpireId != null) {
		fixtureData.firstUmpireId = firstUmpireId;
	}
	final int? secondUmpireId = jsonConvert.convert<int>(json['second_umpire_id']);
	if (secondUmpireId != null) {
		fixtureData.secondUmpireId = secondUmpireId;
	}
	final int? tvUmpireId = jsonConvert.convert<int>(json['tv_umpire_id']);
	if (tvUmpireId != null) {
		fixtureData.tvUmpireId = tvUmpireId;
	}
	final int? refereeId = jsonConvert.convert<int>(json['referee_id']);
	if (refereeId != null) {
		fixtureData.refereeId = refereeId;
	}
	final int? manOfMatchId = jsonConvert.convert<int>(json['man_of_match_id']);
	if (manOfMatchId != null) {
		fixtureData.manOfMatchId = manOfMatchId;
	}
	final int? manOfSeriesId = jsonConvert.convert<int>(json['man_of_series_id']);
	if (manOfSeriesId != null) {
		fixtureData.manOfSeriesId = manOfSeriesId;
	}
	final int? totalOversPlayed = jsonConvert.convert<int>(json['total_overs_played']);
	if (totalOversPlayed != null) {
		fixtureData.totalOversPlayed = totalOversPlayed;
	}
	final String? elected = jsonConvert.convert<String>(json['elected']);
	if (elected != null) {
		fixtureData.elected = elected;
	}
	final bool? superOver = jsonConvert.convert<bool>(json['super_over']);
	if (superOver != null) {
		fixtureData.superOver = superOver;
	}
	final bool? followOn = jsonConvert.convert<bool>(json['follow_on']);
	if (followOn != null) {
		fixtureData.followOn = followOn;
	}
	final FixtureDataLocalteamDlData? localteamDlData = jsonConvert.convert<FixtureDataLocalteamDlData>(json['localteam_dl_data']);
	if (localteamDlData != null) {
		fixtureData.localteamDlData = localteamDlData;
	}
	final FixtureDataVisitorteamDlData? visitorteamDlData = jsonConvert.convert<FixtureDataVisitorteamDlData>(json['visitorteam_dl_data']);
	if (visitorteamDlData != null) {
		fixtureData.visitorteamDlData = visitorteamDlData;
	}
	final dynamic rpcOvers = jsonConvert.convert<dynamic>(json['rpc_overs']);
	if (rpcOvers != null) {
		fixtureData.rpcOvers = rpcOvers;
	}
	final dynamic rpcTarget = jsonConvert.convert<dynamic>(json['rpc_target']);
	if (rpcTarget != null) {
		fixtureData.rpcTarget = rpcTarget;
	}
	final List<dynamic>? weatherReport = jsonConvert.convertListNotNull<dynamic>(json['weather_report']);
	if (weatherReport != null) {
		fixtureData.weatherReport = weatherReport;
	}
	return fixtureData;
}

Map<String, dynamic> $FixtureDataToJson(FixtureData entity) {
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
	data['localteam_dl_data'] = entity.localteamDlData.toJson();
	data['visitorteam_dl_data'] = entity.visitorteamDlData.toJson();
	data['rpc_overs'] = entity.rpcOvers;
	data['rpc_target'] = entity.rpcTarget;
	data['weather_report'] =  entity.weatherReport;
	return data;
}

FixtureDataLocalteamDlData $FixtureDataLocalteamDlDataFromJson(Map<String, dynamic> json) {
	final FixtureDataLocalteamDlData fixtureDataLocalteamDlData = FixtureDataLocalteamDlData();
	final dynamic score = jsonConvert.convert<dynamic>(json['score']);
	if (score != null) {
		fixtureDataLocalteamDlData.score = score;
	}
	final dynamic overs = jsonConvert.convert<dynamic>(json['overs']);
	if (overs != null) {
		fixtureDataLocalteamDlData.overs = overs;
	}
	final dynamic wicketsOut = jsonConvert.convert<dynamic>(json['wickets_out']);
	if (wicketsOut != null) {
		fixtureDataLocalteamDlData.wicketsOut = wicketsOut;
	}
	return fixtureDataLocalteamDlData;
}

Map<String, dynamic> $FixtureDataLocalteamDlDataToJson(FixtureDataLocalteamDlData entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['score'] = entity.score;
	data['overs'] = entity.overs;
	data['wickets_out'] = entity.wicketsOut;
	return data;
}

FixtureDataVisitorteamDlData $FixtureDataVisitorteamDlDataFromJson(Map<String, dynamic> json) {
	final FixtureDataVisitorteamDlData fixtureDataVisitorteamDlData = FixtureDataVisitorteamDlData();
	final dynamic score = jsonConvert.convert<dynamic>(json['score']);
	if (score != null) {
		fixtureDataVisitorteamDlData.score = score;
	}
	final dynamic overs = jsonConvert.convert<dynamic>(json['overs']);
	if (overs != null) {
		fixtureDataVisitorteamDlData.overs = overs;
	}
	final dynamic wicketsOut = jsonConvert.convert<dynamic>(json['wickets_out']);
	if (wicketsOut != null) {
		fixtureDataVisitorteamDlData.wicketsOut = wicketsOut;
	}
	return fixtureDataVisitorteamDlData;
}

Map<String, dynamic> $FixtureDataVisitorteamDlDataToJson(FixtureDataVisitorteamDlData entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['score'] = entity.score;
	data['overs'] = entity.overs;
	data['wickets_out'] = entity.wicketsOut;
	return data;
}

FixtureLinks $FixtureLinksFromJson(Map<String, dynamic> json) {
	final FixtureLinks fixtureLinks = FixtureLinks();
	final String? first = jsonConvert.convert<String>(json['first']);
	if (first != null) {
		fixtureLinks.first = first;
	}
	final String? last = jsonConvert.convert<String>(json['last']);
	if (last != null) {
		fixtureLinks.last = last;
	}
	final dynamic prev = jsonConvert.convert<dynamic>(json['prev']);
	if (prev != null) {
		fixtureLinks.prev = prev;
	}
	final String? next = jsonConvert.convert<String>(json['next']);
	if (next != null) {
		fixtureLinks.next = next;
	}
	return fixtureLinks;
}

Map<String, dynamic> $FixtureLinksToJson(FixtureLinks entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['first'] = entity.first;
	data['last'] = entity.last;
	data['prev'] = entity.prev;
	data['next'] = entity.next;
	return data;
}

FixtureMeta $FixtureMetaFromJson(Map<String, dynamic> json) {
	final FixtureMeta fixtureMeta = FixtureMeta();
	final int? currentPage = jsonConvert.convert<int>(json['current_page']);
	if (currentPage != null) {
		fixtureMeta.currentPage = currentPage;
	}
	final int? from = jsonConvert.convert<int>(json['from']);
	if (from != null) {
		fixtureMeta.from = from;
	}
	final int? lastPage = jsonConvert.convert<int>(json['last_page']);
	if (lastPage != null) {
		fixtureMeta.lastPage = lastPage;
	}
	final List<FixtureMetaLinks>? links = jsonConvert.convertListNotNull<FixtureMetaLinks>(json['links']);
	if (links != null) {
		fixtureMeta.links = links;
	}
	final String? path = jsonConvert.convert<String>(json['path']);
	if (path != null) {
		fixtureMeta.path = path;
	}
	final int? perPage = jsonConvert.convert<int>(json['per_page']);
	if (perPage != null) {
		fixtureMeta.perPage = perPage;
	}
	final int? to = jsonConvert.convert<int>(json['to']);
	if (to != null) {
		fixtureMeta.to = to;
	}
	final int? total = jsonConvert.convert<int>(json['total']);
	if (total != null) {
		fixtureMeta.total = total;
	}
	return fixtureMeta;
}

Map<String, dynamic> $FixtureMetaToJson(FixtureMeta entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['current_page'] = entity.currentPage;
	data['from'] = entity.from;
	data['last_page'] = entity.lastPage;
	data['links'] =  entity.links.map((v) => v.toJson()).toList();
	data['path'] = entity.path;
	data['per_page'] = entity.perPage;
	data['to'] = entity.to;
	data['total'] = entity.total;
	return data;
}

FixtureMetaLinks $FixtureMetaLinksFromJson(Map<String, dynamic> json) {
	final FixtureMetaLinks fixtureMetaLinks = FixtureMetaLinks();
	final String? url = jsonConvert.convert<String>(json['url']);
	if (url != null) {
		fixtureMetaLinks.url = url;
	}
	final String? label = jsonConvert.convert<String>(json['label']);
	if (label != null) {
		fixtureMetaLinks.label = label;
	}
	final bool? active = jsonConvert.convert<bool>(json['active']);
	if (active != null) {
		fixtureMetaLinks.active = active;
	}
	return fixtureMetaLinks;
}

Map<String, dynamic> $FixtureMetaLinksToJson(FixtureMetaLinks entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['url'] = entity.url;
	data['label'] = entity.label;
	data['active'] = entity.active;
	return data;
}