// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CountryStruct extends BaseStruct {
  CountryStruct({
    String? countryNameJa,
    String? regionNameJa,
    String? regionNameEn,
    String? countryNameEn,
  })  : _countryNameJa = countryNameJa,
        _regionNameJa = regionNameJa,
        _regionNameEn = regionNameEn,
        _countryNameEn = countryNameEn;

  // "countryName_ja" field.
  String? _countryNameJa;
  String get countryNameJa => _countryNameJa ?? '';
  set countryNameJa(String? val) => _countryNameJa = val;

  bool hasCountryNameJa() => _countryNameJa != null;

  // "regionName_ja" field.
  String? _regionNameJa;
  String get regionNameJa => _regionNameJa ?? '';
  set regionNameJa(String? val) => _regionNameJa = val;

  bool hasRegionNameJa() => _regionNameJa != null;

  // "regionName_en" field.
  String? _regionNameEn;
  String get regionNameEn => _regionNameEn ?? '';
  set regionNameEn(String? val) => _regionNameEn = val;

  bool hasRegionNameEn() => _regionNameEn != null;

  // "countryName_en" field.
  String? _countryNameEn;
  String get countryNameEn => _countryNameEn ?? '';
  set countryNameEn(String? val) => _countryNameEn = val;

  bool hasCountryNameEn() => _countryNameEn != null;

  static CountryStruct fromMap(Map<String, dynamic> data) => CountryStruct(
        countryNameJa: data['countryName_ja'] as String?,
        regionNameJa: data['regionName_ja'] as String?,
        regionNameEn: data['regionName_en'] as String?,
        countryNameEn: data['countryName_en'] as String?,
      );

  static CountryStruct? maybeFromMap(dynamic data) =>
      data is Map ? CountryStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'countryName_ja': _countryNameJa,
        'regionName_ja': _regionNameJa,
        'regionName_en': _regionNameEn,
        'countryName_en': _countryNameEn,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'countryName_ja': serializeParam(
          _countryNameJa,
          ParamType.String,
        ),
        'regionName_ja': serializeParam(
          _regionNameJa,
          ParamType.String,
        ),
        'regionName_en': serializeParam(
          _regionNameEn,
          ParamType.String,
        ),
        'countryName_en': serializeParam(
          _countryNameEn,
          ParamType.String,
        ),
      }.withoutNulls;

  static CountryStruct fromSerializableMap(Map<String, dynamic> data) =>
      CountryStruct(
        countryNameJa: deserializeParam(
          data['countryName_ja'],
          ParamType.String,
          false,
        ),
        regionNameJa: deserializeParam(
          data['regionName_ja'],
          ParamType.String,
          false,
        ),
        regionNameEn: deserializeParam(
          data['regionName_en'],
          ParamType.String,
          false,
        ),
        countryNameEn: deserializeParam(
          data['countryName_en'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CountryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CountryStruct &&
        countryNameJa == other.countryNameJa &&
        regionNameJa == other.regionNameJa &&
        regionNameEn == other.regionNameEn &&
        countryNameEn == other.countryNameEn;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([countryNameJa, regionNameJa, regionNameEn, countryNameEn]);
}

CountryStruct createCountryStruct({
  String? countryNameJa,
  String? regionNameJa,
  String? regionNameEn,
  String? countryNameEn,
}) =>
    CountryStruct(
      countryNameJa: countryNameJa,
      regionNameJa: regionNameJa,
      regionNameEn: regionNameEn,
      countryNameEn: countryNameEn,
    );
