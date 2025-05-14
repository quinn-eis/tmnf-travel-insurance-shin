// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:js' as js;
import 'dart:html' as html;

Future<dynamic> getMetadata() async {
  // Add your function code here!

  try {
    String? referrer;
    try {
      referrer = js.context['document']['referrer'] as String?;
    } catch (e) {
      print('Error getting referrer: $e');
    }

    String userAgent = html.window.navigator.userAgent;

    Map<String, dynamic> metadata = {
      'referrer': referrer,
      'userAgent': userAgent,
    };

    return metadata;
  } catch (e) {
    print('Error getting metadata: $e');
    // You might want to handle the error or propagate it depending on your requirements.
    throw e;
  }
}
