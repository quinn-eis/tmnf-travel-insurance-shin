// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<DateTime?> launchCustomDateTimePicker(BuildContext context) async {
  // Add your function code here!
  final _datePickedDate = await showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime(1900),
    lastDate: DateTime.now(),
  );

  TimeOfDay? _datePickedTime; // Move this declaration outside the if block

  if (_datePickedDate != null) {
    _datePickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      initialEntryMode: TimePickerEntryMode.input, // Corrected syntax here
    );
  }

  DateTime? combinedDateTime;
  if (_datePickedDate != null && _datePickedTime != null) {
    // Combine the date and time
    combinedDateTime = DateTime(
      _datePickedDate.year,
      _datePickedDate.month,
      _datePickedDate.day,
      _datePickedTime.hour,
      _datePickedTime.minute,
    );
  }

  // Add a default return statement
  return combinedDateTime;
}
