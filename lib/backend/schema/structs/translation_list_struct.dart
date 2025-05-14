// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TranslationListStruct extends BaseStruct {
  TranslationListStruct({
    String? japanese,
    String? english,
  })  : _japanese = japanese,
        _english = english;

  // "japanese" field.
  String? _japanese;
  String get japanese => _japanese ?? '';
  set japanese(String? val) => _japanese = val;

  bool hasJapanese() => _japanese != null;

  // "english" field.
  String? _english;
  String get english => _english ?? '';
  set english(String? val) => _english = val;

  bool hasEnglish() => _english != null;

  static TranslationListStruct fromMap(Map<String, dynamic> data) =>
      TranslationListStruct(
        japanese: data['japanese'] as String?,
        english: data['english'] as String?,
      );

  static TranslationListStruct? maybeFromMap(dynamic data) => data is Map
      ? TranslationListStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'japanese': _japanese,
        'english': _english,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'japanese': serializeParam(
          _japanese,
          ParamType.String,
        ),
        'english': serializeParam(
          _english,
          ParamType.String,
        ),
      }.withoutNulls;

  static TranslationListStruct fromSerializableMap(Map<String, dynamic> data) =>
      TranslationListStruct(
        japanese: deserializeParam(
          data['japanese'],
          ParamType.String,
          false,
        ),
        english: deserializeParam(
          data['english'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TranslationListStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TranslationListStruct &&
        japanese == other.japanese &&
        english == other.english;
  }

  @override
  int get hashCode => const ListEquality().hash([japanese, english]);
}

TranslationListStruct createTranslationListStruct({
  String? japanese,
  String? english,
}) =>
    TranslationListStruct(
      japanese: japanese,
      english: english,
    );
