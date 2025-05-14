// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:kana_kit/kana_kit.dart';

Future<String?> transliterateJP(
  String conversionType,
  String? transliterateText,
) async {
  String returnText;
  if (transliterateText != null && transliterateText.length > 0) {
    const kanaKit = KanaKit();
    if (conversionType == "Hiragana") {
      returnText = kanaKit.toHiragana(transliterateText);
    } else if (conversionType == "Kana") {
      returnText = kanaKit.toKana(transliterateText);
    } else if (conversionType == "Katakana") {
      returnText = kanaKit.toKatakana(transliterateText);
    } else if (conversionType == "Romaji") {
      returnText = kanaKit.toRomaji(transliterateText);
    } else {
      return "";
    }
    return returnText;
  } else {
    return "";
  }
}
