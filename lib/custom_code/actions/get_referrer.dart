// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:html' as html;
import 'package:flutter/foundation.dart' show kIsWeb;

String? getReferrer() {
  if (kIsWeb) {
    try {
      return html.document.referrer;
    } catch (e) {
      print('Error getting referrer: $e');
      return null;
    }
  } else {
    print('getReferrer() is only available in web context.');
    return null;
  }
}
