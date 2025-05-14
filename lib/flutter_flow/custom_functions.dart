import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';

double progressBarPercent(
  String? currentSectionName,
  String? currentQuestionName,
) {
  return 0.05;
// Some text
}

dynamic locationJson(
  String placeID,
  LatLng latLng,
  String addressLine1,
  String city,
  String state,
  String postalCode,
  String fullAddress,
  String addressNumberLine1,
  bool googleValidated,
  String approximateLocation,
  String county,
  String country,
) {
  String latLngString = latLng.toString();

  Map<String, dynamic> jsonMap = {
    'placeID': placeID.isNotEmpty ? '$placeID' : null,
    'latLng': latLngString.isNotEmpty ? '$latLngString' : null,
    'addressLine1': addressLine1.isNotEmpty ? '$addressLine1' : null,
    'city': city.isNotEmpty ? '$city' : null,
    'state': state.isNotEmpty ? '$state' : null,
    'postalCode': postalCode.isNotEmpty ? '$postalCode' : null,
    'fullAddress': fullAddress.isNotEmpty ? '$fullAddress' : null,
    'addressNumberLine1':
        addressNumberLine1.isNotEmpty ? '$addressNumberLine1' : null,
    'googleValidated': googleValidated,
    'approximateLocation':
        approximateLocation.isNotEmpty ? '$approximateLocation' : null,
    'county': county.isNotEmpty ? '$county' : null,
    'country': country.isNotEmpty ? '$country' : null
  };

  return jsonMap;
}

LatLng generateLatLng(
  String lat,
  String lng,
) {
  return LatLng(double.parse(lat), double.parse(lng));
}

bool? compareLatLngValidate(
  LatLng? one,
  LatLng? two,
) {
  double _toRadians(double degrees) => degrees * math.pi / 180;
  num _haversin(double radians) => math.pow(math.sin(radians / 2), 2);
  double distance(double? lat1, double? lon1, double? lat2, double? lon2) {
    const r = 6372.8; // Earth radius in kilometers

    final dLat = _toRadians(lat2! - lat1!);
    final dLon = _toRadians(lon2! - lon1!);
    final lat1Radians = _toRadians(lat1);
    final lat2Radians = _toRadians(lat2);

    final a = _haversin(dLat) +
        math.cos(lat1Radians) * math.cos(lat2Radians) * _haversin(dLon);
    final c = 2 * math.asin(math.sqrt(a));

    return r * c;
  }

  double totalKmDistance =
      distance(one?.latitude, one?.longitude, two?.latitude, two?.longitude);

  if (totalKmDistance < 1) {
    return true;
  } else {
    return false;
  }
}

bool? compareLatLng(
  LatLng? one,
  LatLng? two,
) {
  double _toRadians(double degrees) => degrees * math.pi / 180;
  num _haversin(double radians) => math.pow(math.sin(radians / 2), 2);
  double distance(double? lat1, double? lon1, double? lat2, double? lon2) {
    const r = 6372.8; // Earth radius in kilometers

    final dLat = _toRadians(lat2! - lat1!);
    final dLon = _toRadians(lon2! - lon1!);
    final lat1Radians = _toRadians(lat1);
    final lat2Radians = _toRadians(lat2);

    final a = _haversin(dLat) +
        math.cos(lat1Radians) * math.cos(lat2Radians) * _haversin(dLon);
    final c = 2 * math.asin(math.sqrt(a));

    return r * c;
  }

  double totalKmDistance =
      distance(one?.latitude, one?.longitude, two?.latitude, two?.longitude);

  if (totalKmDistance > 0.00625) {
    return false;
  } else {
    return true;
  }
}

String? formatLatLng(LatLng latlng) {
  return latlng.latitude.toString() + "," + latlng.longitude.toString();
}

LatLng determineStartingLatLng(
  LatLng? currentUserLocation,
  String? selectedLocationStringLatLng,
  double defaultFallbackLat,
  double defaultFallbackLong,
) {
  if (selectedLocationStringLatLng != null) {
    String latLngString = selectedLocationStringLatLng;
    RegExp regex = RegExp(r"[-+]?\d*\.\d+|\d+"); // regex to match numbers
    List<String?> matches =
        regex.allMatches(latLngString).map((m) => m.group(0)).toList();

    double latitude = double.parse(matches[0]!);
    double longitude = double.parse(matches[1]!);

    return LatLng(latitude, longitude);
  } else if (currentUserLocation != null &&
      (currentUserLocation.latitude != 0 &&
          currentUserLocation.longitude != 0)) {
    print(currentUserLocation);
    return LatLng(currentUserLocation.latitude, currentUserLocation.longitude);
  } else {
    return LatLng(defaultFallbackLat, defaultFallbackLong);
  }
}

bool? locationPermissionAvailable(LatLng? currentUserLocation) {
  if (currentUserLocation!.latitude != 0 &&
      currentUserLocation!.longitude != 0) {
    return true;
  } else {
    return false;
  }
}

String getShortName(
  dynamic addressComponents,
  String componentType,
) {
  for (var i = 0; i < addressComponents.length; i++) {
    var component = addressComponents[i];
    var types = List<String>.from(component['types']);
    if (types.contains(componentType)) {
      return component['short_name'];
    }
  }
  return '';
}

String getState(List<dynamic>? addressComponents) {
  String? addy;
  String? addy1;
  String? addy2;
  String? addy3;
  String? addy4;

  for (dynamic component in addressComponents![0]) {
    if (component["types"].contains('administrative_area_level_1')) {
      addy = component['long_name'] ?? component['short_name'];
    } else if (component["types"].contains('administrative_area_level_2')) {
      addy1 = component['long_name'] ?? component['short_name'];
    } else if (component["types"].contains('administrative_area_level_3')) {
      addy2 = component['long_name'] ?? component['short_name'];
    } else if (component["types"].contains('administrative_area_level_4')) {
      addy3 = component['long_name'] ?? component['short_name'];
    } else if (component["types"].contains('administrative_area_level_5')) {
      addy4 = component['long_name'] ?? component['short_name'];
    }
  }
  return addy ?? addy1 ?? addy2 ?? addy3 ?? addy4 ?? '';
}

String latlngformat(LatLng latlng) {
  String latvar = latlng.latitude.toString();
  String longvar = latlng.longitude.toString();
  return latvar + ',' + longvar;
}

String getStreetAddressNumber(List<dynamic>? addressComponents) {
  String streetNumber = "";
  for (dynamic component in addressComponents![0]) {
    if (component["types"].contains('street_number')) {
      streetNumber = component['long_name'] ?? component['short_name'];
    }
  }
  return streetNumber;
}

String getStreetAddressRoute(List<dynamic>? addressComponents) {
  String? state;
  String? state1;
  String? state2;
  String? state3;
  String? state4;

  for (dynamic component in addressComponents![0]) {
    if (component["types"].contains('route')) {
      state = component['long_name'] ?? component['short_name'];
    } else if (component["types"].contains('premise')) {
      state1 = component['long_name'] ?? component['short_name'];
    } else if (component["types"].contains('neighborhood')) {
      state2 = component['long_name'] ?? component['short_name'];
    } else if (component["types"].contains('colloquial_area')) {
      state3 = component['long_name'] ?? component['short_name'];
    } else if (component["types"].contains('intersection')) {
      state4 = component['long_name'] ?? component['short_name'];
    }
  }
  return state ?? state1 ?? state2 ?? state3 ?? state4 ?? '';
}

String getCity(List<dynamic>? addressComponents) {
  String? city;
  String? city1;
  String? city2;
  String? city3;
  String? city4;
  String? city5;
  for (dynamic component in addressComponents![0]) {
    if (component["types"].contains('locality')) {
      city = component['long_name'] ?? component['short_name'];
    } else if (component["types"].contains('sublocality')) {
      city1 = component['long_name'] ?? component['short_name'];
    } else if (component["types"].contains('sublocality_level_1')) {
      city2 = component['long_name'] ?? component['short_name'];
    } else if (component["types"].contains('sublocality_level_2')) {
      city3 = component['long_name'] ?? component['short_name'];
    } else if (component["types"].contains('sublocality_level_3')) {
      city4 = component['long_name'] ?? component['short_name'];
    } else if (component["types"].contains('sublocality_level_4')) {
      city5 = component['long_name'] ?? component['short_name'];
    }
  }
  return city ?? city1 ?? city2 ?? city3 ?? city4 ?? city5 ?? '';
}

String getPostalCode(List<dynamic>? addressComponents) {
  String postalCode = "";
  for (dynamic component in addressComponents![0]) {
    if (component["types"].contains('postal_code')) {
      postalCode = component['long_name'] ?? component['short_name'];
      break;
    }
  }
  return postalCode;
}

bool isProd(String productionDomain) {
  return Uri.base.host.contains(productionDomain);
}

bool isFutureTime(
  DateTime dolEntered,
  int lossLocationRawOffsetSec,
  int lossLocationDstOffsetSec,
) {
  DateTime now = DateTime.now();
  Duration localOffset = now.timeZoneOffset;

  Duration lossLocationOffsetDuration =
      Duration(seconds: lossLocationRawOffsetSec + lossLocationDstOffsetSec);

  DateTime dolLossLocationCorrected =
      dolEntered.add(localOffset).subtract(lossLocationOffsetDuration);

  bool isFuture = dolLossLocationCorrected.isAfter(now);

  return isFuture;
}

String? claimSummary(ClaimStructureStruct claimFields) {
  String open = '{\n';
  String text1 = '"insuranceType": "' + claimFields.insuranceType + '",\n\n';

  String text2 = '"policyNumber": "' + claimFields.policyNumber + '",\n';
  String text3 = '"policyTermStart": "' +
      claimFields.policyTermStartDateStr +
      '",\n' +
      '"policyTermEnd": "' +
      claimFields.policyTermEndDateStr +
      '",\n\n';

  String text4 = '"creditCardType": "' + claimFields.creditCardType + '",\n';
  String text5 = '"membershipType": "' + claimFields.membershipType + '",\n\n';

  String text6 = '"claimantNameKanji": "' +
      claimFields.claimantFamilyKanji +
      claimFields.claimantGivenKanji +
      '",\n';
  String text7 = '"claimantNameKana": "' +
      claimFields.claimantFamilyKana +
      claimFields.claimantGivenKana +
      '",\n\n';

  String text8 = '"insuredNameKanji": "' +
      claimFields.insuredFamilyKanji +
      claimFields.insuredGivenKanji +
      '",\n';
  String text9 = '"insuredNameKana": "' +
      claimFields.insuredFamilyKana +
      claimFields.insuredGivenKana +
      '",\n\n';

  String text10 = '"coverageType": "' + claimFields.coverageType + '",\n\n';

  String text11 = '"injuryDate": "' + claimFields.injuryDateStr + '",\n';
  String text12 = '"injuryDetails": "' + claimFields.injuryDetail + '"\n';

  String text13 =
      '"baggageDelayReason": "' + claimFields.baggageDelayReason + '",\n';
  String text14 =
      '"arrivalAirport": "' + claimFields.arrivalAirportName + '",\n';
  String text15 = '"arrivalDate": "' + claimFields.arrivalDateStr + '",\n';
  String text16 =
      '"arrivalFlightNumber": "' + claimFields.arrivalFlightNumber + '"\n';

  String close = '\n}';

  if (claimFields.insuranceType == "Travel Insurance")
    return open +
        text1 +
        text2 +
        text3 +
        text6 +
        text7 +
        text8 +
        text9 +
        text10 +
        close;
  else
    return open +
        text1 +
        text4 +
        text5 +
        text6 +
        text7 +
        text8 +
        text9 +
        text10 +
        close;
}
