// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AccidentLocationStruct extends BaseStruct {
  AccidentLocationStruct({
    String? placeID,
    LatLng? latLng,
    String? addressLine1,
    String? city,
    String? state,
    String? postalCode,
    String? fullAddress,
    String? addressNumberLine1,
    bool? googleValidated,
    String? approximateLocation,
    String? county,
    String? country,
  })  : _placeID = placeID,
        _latLng = latLng,
        _addressLine1 = addressLine1,
        _city = city,
        _state = state,
        _postalCode = postalCode,
        _fullAddress = fullAddress,
        _addressNumberLine1 = addressNumberLine1,
        _googleValidated = googleValidated,
        _approximateLocation = approximateLocation,
        _county = county,
        _country = country;

  // "placeID" field.
  String? _placeID;
  String get placeID => _placeID ?? '';
  set placeID(String? val) => _placeID = val;

  bool hasPlaceID() => _placeID != null;

  // "latLng" field.
  LatLng? _latLng;
  LatLng? get latLng => _latLng;
  set latLng(LatLng? val) => _latLng = val;

  bool hasLatLng() => _latLng != null;

  // "addressLine1" field.
  String? _addressLine1;
  String get addressLine1 => _addressLine1 ?? '';
  set addressLine1(String? val) => _addressLine1 = val;

  bool hasAddressLine1() => _addressLine1 != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  set city(String? val) => _city = val;

  bool hasCity() => _city != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  set state(String? val) => _state = val;

  bool hasState() => _state != null;

  // "postalCode" field.
  String? _postalCode;
  String get postalCode => _postalCode ?? '';
  set postalCode(String? val) => _postalCode = val;

  bool hasPostalCode() => _postalCode != null;

  // "fullAddress" field.
  String? _fullAddress;
  String get fullAddress => _fullAddress ?? '';
  set fullAddress(String? val) => _fullAddress = val;

  bool hasFullAddress() => _fullAddress != null;

  // "addressNumberLine1" field.
  String? _addressNumberLine1;
  String get addressNumberLine1 => _addressNumberLine1 ?? '';
  set addressNumberLine1(String? val) => _addressNumberLine1 = val;

  bool hasAddressNumberLine1() => _addressNumberLine1 != null;

  // "googleValidated" field.
  bool? _googleValidated;
  bool get googleValidated => _googleValidated ?? false;
  set googleValidated(bool? val) => _googleValidated = val;

  bool hasGoogleValidated() => _googleValidated != null;

  // "ApproximateLocation" field.
  String? _approximateLocation;
  String get approximateLocation => _approximateLocation ?? '';
  set approximateLocation(String? val) => _approximateLocation = val;

  bool hasApproximateLocation() => _approximateLocation != null;

  // "county" field.
  String? _county;
  String get county => _county ?? '';
  set county(String? val) => _county = val;

  bool hasCounty() => _county != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  set country(String? val) => _country = val;

  bool hasCountry() => _country != null;

  static AccidentLocationStruct fromMap(Map<String, dynamic> data) =>
      AccidentLocationStruct(
        placeID: data['placeID'] as String?,
        latLng: data['latLng'] as LatLng?,
        addressLine1: data['addressLine1'] as String?,
        city: data['city'] as String?,
        state: data['state'] as String?,
        postalCode: data['postalCode'] as String?,
        fullAddress: data['fullAddress'] as String?,
        addressNumberLine1: data['addressNumberLine1'] as String?,
        googleValidated: data['googleValidated'] as bool?,
        approximateLocation: data['ApproximateLocation'] as String?,
        county: data['county'] as String?,
        country: data['country'] as String?,
      );

  static AccidentLocationStruct? maybeFromMap(dynamic data) => data is Map
      ? AccidentLocationStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'placeID': _placeID,
        'latLng': _latLng,
        'addressLine1': _addressLine1,
        'city': _city,
        'state': _state,
        'postalCode': _postalCode,
        'fullAddress': _fullAddress,
        'addressNumberLine1': _addressNumberLine1,
        'googleValidated': _googleValidated,
        'ApproximateLocation': _approximateLocation,
        'county': _county,
        'country': _country,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'placeID': serializeParam(
          _placeID,
          ParamType.String,
        ),
        'latLng': serializeParam(
          _latLng,
          ParamType.LatLng,
        ),
        'addressLine1': serializeParam(
          _addressLine1,
          ParamType.String,
        ),
        'city': serializeParam(
          _city,
          ParamType.String,
        ),
        'state': serializeParam(
          _state,
          ParamType.String,
        ),
        'postalCode': serializeParam(
          _postalCode,
          ParamType.String,
        ),
        'fullAddress': serializeParam(
          _fullAddress,
          ParamType.String,
        ),
        'addressNumberLine1': serializeParam(
          _addressNumberLine1,
          ParamType.String,
        ),
        'googleValidated': serializeParam(
          _googleValidated,
          ParamType.bool,
        ),
        'ApproximateLocation': serializeParam(
          _approximateLocation,
          ParamType.String,
        ),
        'county': serializeParam(
          _county,
          ParamType.String,
        ),
        'country': serializeParam(
          _country,
          ParamType.String,
        ),
      }.withoutNulls;

  static AccidentLocationStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AccidentLocationStruct(
        placeID: deserializeParam(
          data['placeID'],
          ParamType.String,
          false,
        ),
        latLng: deserializeParam(
          data['latLng'],
          ParamType.LatLng,
          false,
        ),
        addressLine1: deserializeParam(
          data['addressLine1'],
          ParamType.String,
          false,
        ),
        city: deserializeParam(
          data['city'],
          ParamType.String,
          false,
        ),
        state: deserializeParam(
          data['state'],
          ParamType.String,
          false,
        ),
        postalCode: deserializeParam(
          data['postalCode'],
          ParamType.String,
          false,
        ),
        fullAddress: deserializeParam(
          data['fullAddress'],
          ParamType.String,
          false,
        ),
        addressNumberLine1: deserializeParam(
          data['addressNumberLine1'],
          ParamType.String,
          false,
        ),
        googleValidated: deserializeParam(
          data['googleValidated'],
          ParamType.bool,
          false,
        ),
        approximateLocation: deserializeParam(
          data['ApproximateLocation'],
          ParamType.String,
          false,
        ),
        county: deserializeParam(
          data['county'],
          ParamType.String,
          false,
        ),
        country: deserializeParam(
          data['country'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AccidentLocationStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AccidentLocationStruct &&
        placeID == other.placeID &&
        latLng == other.latLng &&
        addressLine1 == other.addressLine1 &&
        city == other.city &&
        state == other.state &&
        postalCode == other.postalCode &&
        fullAddress == other.fullAddress &&
        addressNumberLine1 == other.addressNumberLine1 &&
        googleValidated == other.googleValidated &&
        approximateLocation == other.approximateLocation &&
        county == other.county &&
        country == other.country;
  }

  @override
  int get hashCode => const ListEquality().hash([
        placeID,
        latLng,
        addressLine1,
        city,
        state,
        postalCode,
        fullAddress,
        addressNumberLine1,
        googleValidated,
        approximateLocation,
        county,
        country
      ]);
}

AccidentLocationStruct createAccidentLocationStruct({
  String? placeID,
  LatLng? latLng,
  String? addressLine1,
  String? city,
  String? state,
  String? postalCode,
  String? fullAddress,
  String? addressNumberLine1,
  bool? googleValidated,
  String? approximateLocation,
  String? county,
  String? country,
}) =>
    AccidentLocationStruct(
      placeID: placeID,
      latLng: latLng,
      addressLine1: addressLine1,
      city: city,
      state: state,
      postalCode: postalCode,
      fullAddress: fullAddress,
      addressNumberLine1: addressNumberLine1,
      googleValidated: googleValidated,
      approximateLocation: approximateLocation,
      county: county,
      country: country,
    );
