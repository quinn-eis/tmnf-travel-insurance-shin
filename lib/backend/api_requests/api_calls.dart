import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class PlacesAutocompleteCall {
  static Future<ApiCallResponse> call({
    String? input = '',
    String? sessiontoken = 'klsmdfmoim4893fuisdfmi',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'placesAutocomplete',
      apiUrl:
          'https://zf22zm6fwti5avvh6e2b5cwfd40hbsop.lambda-url.us-west-2.on.aws/',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'key': "kdsmcuysdn874yf67erhuysndfjhny7t4e372nudwsjn",
        'input': input,
        'sessiontoken': sessiontoken,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? allPredictions(dynamic response) => getJsonField(
        response,
        r'''$.predictions''',
        true,
      ) as List?;
  static List<String>? clearText(dynamic response) => (getJsonField(
        response,
        r'''$.predictions[:].description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? placeID(dynamic response) => (getJsonField(
        response,
        r'''$.predictions[:].place_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class PlacesDetailsCall {
  static Future<ApiCallResponse> call({
    String? sessiontoken = 'kjasnfjksknfds673',
    String? placeId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'placesDetails',
      apiUrl:
          'https://euklotdzvc5322dgit6heybw6e0yfoji.lambda-url.us-west-2.on.aws/',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'key': "kdsmcuysdn874yf67erhuysndfjhny7t4e372nudwsjn",
        'place_id': placeId,
        'sessiontoken': sessiontoken,
        'fields': "geometry/location",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static double? lat(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.result.geometry.location.lat''',
      ));
  static double? lng(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.result.geometry.location.lng''',
      ));
}

class TimezoneLookupCall {
  static Future<ApiCallResponse> call({
    String? latlng = '',
    String? dol = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'timezoneLookup',
      apiUrl:
          'https://2wcxzlvkcatkfw6vvg5vtgxlgu0rkrzb.lambda-url.us-west-2.on.aws/',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'key': "kdsmcuysdn874yf67erhuysndfjhny7t4e372nudwsjn",
        'latlng': latlng,
        'dol': dol,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic dstOffset(dynamic response) => getJsonField(
        response,
        r'''$.dstOffset''',
      );
  static dynamic rawOffset(dynamic response) => getJsonField(
        response,
        r'''$.rawOffset''',
      );
  static dynamic timezoneId(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
  static dynamic timezoneName(dynamic response) => getJsonField(
        response,
        r'''$.timeZoneId''',
      );
  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.timeZoneName''',
      );
}

class ReverseGeocodeCall {
  static Future<ApiCallResponse> call({
    String? latlng = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'reverseGeocode',
      apiUrl:
          'https://53pkdnwqtwfkm6n6dn4sv75bpa0amusm.lambda-url.us-west-2.on.aws/',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'key': "kdsmcuysdn874yf67erhuysndfjhny7t4e372nudwsjn",
        'latlng': latlng,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? addressComponents(dynamic response) => getJsonField(
        response,
        r'''$.results[:].address_components''',
        true,
      ) as List?;
  static List? fullAddress(dynamic response) => getJsonField(
        response,
        r'''$.results[:].formatted_address''',
        true,
      ) as List?;
  static List? placeID(dynamic response) => getJsonField(
        response,
        r'''$.results[:].place_id''',
        true,
      ) as List?;
  static dynamic statusOK(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
}

class VinLookupDevOnlyCall {
  static Future<ApiCallResponse> call({
    String? vin = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'vinLookupDevOnly',
      apiUrl:
          'https://vpic.nhtsa.dot.gov/api/vehicles/DecodeVin/${vin}?format=json',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Message''',
      ));
  static List? results(dynamic response) => getJsonField(
        response,
        r'''$.Results''',
        true,
      ) as List?;
}

class TmnfTravelDemoCall {
  static Future<ApiCallResponse> call({
    String? accessToken = 'bzr3D7xq-ainc0e6UdeJOGKG6A-bAQpG',
    String? insuranceType = '',
    String? policyNumber = '',
    String? policyTermStartDateStr = '',
    String? policyTermEndDateStr = '',
    String? creditCardType = '',
    String? ccNum = '',
    String? membershipType = '',
    String? notifyEmail = '',
  }) async {
    final ffApiRequestBody = '''
{
"notifyEmail": "${escapeStringForJson(notifyEmail)}",
"insuranceType": "${escapeStringForJson(insuranceType)}",
"policyNumber": "${escapeStringForJson(policyNumber)}",
"policyTermStartDateStr": "${escapeStringForJson(policyTermStartDateStr)}",
"policyTermEndDateStr": "${escapeStringForJson(policyTermEndDateStr)}",
"creditCardType": "${escapeStringForJson(creditCardType)}",
"membershipType": "${escapeStringForJson(membershipType)}",
"ccNum": "${escapeStringForJson(ccNum)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'tmnfTravelDemo',
      apiUrl:
          'https://directus-dev.metromileai.com/items/tmnfTravelDemo?access_token=${accessToken}',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
