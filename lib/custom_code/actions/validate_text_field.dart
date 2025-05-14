// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

//This custom function is written to overcome the limitations in validating strings that are builtin to flutterflow
//specifically the major limitation is the lack of validation options for non required strings
//and the ability to manage strings that are either null or a minimum length as both options (example: entry can be nothing but if something must be 4 characters or more)
//Likely extension of this function will be required when we add Japanese alphabets into the mix, I anticipate a initial logic branch to handle JP alphabets

//Recommended use of this function is to have a page state varable that is mapped to the text of an error display
//set conditional visibility on the error message in the UI to only display when the returned text is not "pass"
//ensure your form field is set to update on change with 0ms delay (may need to go higher if you have many fields)

//on form submit validate that none of your error variables are anything other than pass

Future<String> validateTextField(
  String? textValue, //pass the text to validate
  String
      regexString, //pass a string which tells the function which regex to use (see the case statement below to understand available options)
  int? maxLength, //pass maximum length
  int? minLength, //pass minimum length
  bool nullAllowed, //pass true or false for null allowed
  bool caseRegex, // is the regex case sensitive
  bool unicodeRegex, //is the regex for unicode
  bool multiLineRegex, //is the regex multiline
  bool
      matchRegex, //true means must match the pattern, false means must not match
  bool useRegex, //should we check the regex?
  String? errorNull, //error message for null case
  String? errorMax, //error message for max length
  String? errorMin, //error message for min length
  String? errorRegex, //error message for regex no match
) async {
// set default error messages if they are not passed

  if (errorNull == null) {
    errorNull = "Required Field";
  }
  if (errorMax == null) {
    errorMax = "Maximum length is " + maxLength.toString();
  }
  if (errorMin == null) {
    errorMin = "Minimum length is " + minLength.toString();
  }
  if (errorRegex == null) {
    errorRegex = "Invaid characters";
  }

//Case statement that holds all available regex and the code to select them
  String fieldRegexLogic;
  switch (regexString) {
    case "alphaNumeric":
      fieldRegexLogic = r'^[a-zA-Z0-9]+$';
      break;
    case "numeric":
      fieldRegexLogic = r'^[0-9]+$';
      break;
    case "capitalLetters":
      fieldRegexLogic = r'^[A-Z]+$';
      break;
    default: //alphanumeric
      fieldRegexLogic = r'^[a-zA-Z0-9]+$';
      break;
  }

// build the regex matcher function
  final regexExpression = RegExp(fieldRegexLogic,
      caseSensitive: caseRegex,
      unicode: unicodeRegex,
      multiLine: multiLineRegex);

//run the if statements that evaluate all the passed options

  if (nullAllowed && (textValue == null || textValue.length == 0)) {
    return "pass";
  } else if (!nullAllowed && (textValue == null || textValue.length == 0)) {
    return errorNull;
  } else if ((maxLength != null && textValue != null) &&
      textValue.length > maxLength) {
    return errorMax;
  } else if ((minLength != null && textValue != null) &&
      textValue.length < minLength) {
    return errorMin;
  } else if ((useRegex && matchRegex && textValue != null) &&
      !regexExpression.hasMatch(textValue)) {
    return errorRegex;
  } else if ((useRegex && !matchRegex && textValue != null) &&
      regexExpression.hasMatch(textValue)) {
    return errorRegex;
  } else {
    return "pass";
  }
}
