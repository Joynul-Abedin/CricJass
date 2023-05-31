// ignore_for_file: non_constant_identifier_names
// ignore_for_file: camel_case_types
// ignore_for_file: prefer_single_quotes

// This file is automatically generated. DO NOT EDIT, all your changes would be lost.
import 'package:flutter/material.dart' show debugPrint;
import 'package:cricjass/models/fixture_entity.dart';

JsonConvert jsonConvert = JsonConvert();
typedef JsonConvertFunction<T> = T Function(Map<String, dynamic> json);
typedef EnumConvertFunction<T> = T Function(String value);

class JsonConvert {
	static final Map<String, JsonConvertFunction> convertFuncMap = {
		(FixtureEntity).toString(): FixtureEntity.fromJson,
		(FixtureData).toString(): FixtureData.fromJson,
		(FixtureDataLocalteamDlData).toString(): FixtureDataLocalteamDlData.fromJson,
		(FixtureDataVisitorteamDlData).toString(): FixtureDataVisitorteamDlData.fromJson,
		(FixtureLinks).toString(): FixtureLinks.fromJson,
		(FixtureMeta).toString(): FixtureMeta.fromJson,
		(FixtureMetaLinks).toString(): FixtureMetaLinks.fromJson,
	};

  T? convert<T>(dynamic value, {EnumConvertFunction? enumConvert}) {
    if (value == null) {
      return null;
    }
    if (value is T) {
      return value;
    }
    try {
      return _asT<T>(value, enumConvert: enumConvert);
    } catch (e, stackTrace) {
      debugPrint('asT<$T> $e $stackTrace');
      return null;
    }
  }

  List<T?>? convertList<T>(List<dynamic>? value, {EnumConvertFunction? enumConvert}) {
    if (value == null) {
      return null;
    }
    try {
      return value.map((dynamic e) => _asT<T>(e,enumConvert: enumConvert)).toList();
    } catch (e, stackTrace) {
      debugPrint('asT<$T> $e $stackTrace');
      return <T>[];
    }
  }

List<T>? convertListNotNull<T>(dynamic value, {EnumConvertFunction? enumConvert}) {
    if (value == null) {
      return null;
    }
    try {
      return (value as List<dynamic>).map((dynamic e) => _asT<T>(e,enumConvert: enumConvert)!).toList();
    } catch (e, stackTrace) {
      debugPrint('asT<$T> $e $stackTrace');
      return <T>[];
    }
  }

  T? _asT<T extends Object?>(dynamic value,
      {EnumConvertFunction? enumConvert}) {
    final String type = T.toString();
    final String valueS = value.toString();
    if (enumConvert != null) {
      return enumConvert(valueS) as T;
    } else if (type == "String") {
      return valueS as T;
    } else if (type == "int") {
      final int? intValue = int.tryParse(valueS);
      if (intValue == null) {
        return double.tryParse(valueS)?.toInt() as T?;
      } else {
        return intValue as T;
      }
    } else if (type == "double") {
      return double.parse(valueS) as T;
    } else if (type == "DateTime") {
      return DateTime.parse(valueS) as T;
    } else if (type == "bool") {
      if (valueS == '0' || valueS == '1') {
        return (valueS == '1') as T;
      }
      return (valueS == 'true') as T;
    } else if (type == "Map" || type.startsWith("Map<")) {
      return value as T;
    } else {
      if (convertFuncMap.containsKey(type)) {
        return convertFuncMap[type]!(Map<String, dynamic>.from(value)) as T;
      } else {
        throw UnimplementedError('$type unimplemented');
      }
    }
  }

	//list is returned by type
	static M? _getListChildType<M>(List<Map<String, dynamic>> data) {
		if(<FixtureEntity>[] is M){
			return data.map<FixtureEntity>((Map<String, dynamic> e) => FixtureEntity.fromJson(e)).toList() as M;
		}
		if(<FixtureData>[] is M){
			return data.map<FixtureData>((Map<String, dynamic> e) => FixtureData.fromJson(e)).toList() as M;
		}
		if(<FixtureDataLocalteamDlData>[] is M){
			return data.map<FixtureDataLocalteamDlData>((Map<String, dynamic> e) => FixtureDataLocalteamDlData.fromJson(e)).toList() as M;
		}
		if(<FixtureDataVisitorteamDlData>[] is M){
			return data.map<FixtureDataVisitorteamDlData>((Map<String, dynamic> e) => FixtureDataVisitorteamDlData.fromJson(e)).toList() as M;
		}
		if(<FixtureLinks>[] is M){
			return data.map<FixtureLinks>((Map<String, dynamic> e) => FixtureLinks.fromJson(e)).toList() as M;
		}
		if(<FixtureMeta>[] is M){
			return data.map<FixtureMeta>((Map<String, dynamic> e) => FixtureMeta.fromJson(e)).toList() as M;
		}
		if(<FixtureMetaLinks>[] is M){
			return data.map<FixtureMetaLinks>((Map<String, dynamic> e) => FixtureMetaLinks.fromJson(e)).toList() as M;
		}

		debugPrint("${M.toString()} not found");
	
		return null;
}

	static M? fromJsonAsT<M>(dynamic json) {
		if (json is List) {
			return _getListChildType<M>(json.map((e) => e as Map<String, dynamic>).toList());
		} else {
			return jsonConvert.convert<M>(json);
		}
	}
}