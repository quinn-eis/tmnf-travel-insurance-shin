import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  LatLng? _userLocationAppLoad = LatLng(0.0, 0.0);
  LatLng? get userLocationAppLoad => _userLocationAppLoad;
  set userLocationAppLoad(LatLng? value) {
    _userLocationAppLoad = value;
  }

  LatLng? _zeroLocation = LatLng(0.0, 0.0);
  LatLng? get zeroLocation => _zeroLocation;
  set zeroLocation(LatLng? value) {
    _zeroLocation = value;
  }

  String _policyNumber = '';
  String get policyNumber => _policyNumber;
  set policyNumber(String value) {
    _policyNumber = value;
  }

  DateTime? _DOL;
  DateTime? get DOL => _DOL;
  set DOL(DateTime? value) {
    _DOL = value;
  }

  LatLng? _losslocation;
  LatLng? get losslocation => _losslocation;
  set losslocation(LatLng? value) {
    _losslocation = value;
  }

  String _claimNumber = '';
  String get claimNumber => _claimNumber;
  set claimNumber(String value) {
    _claimNumber = value;
  }

  int _pageIndex = 1;
  int get pageIndex => _pageIndex;
  set pageIndex(int value) {
    _pageIndex = value;
  }

  AccidentLocationStruct _userAccidentLocation = AccidentLocationStruct();
  AccidentLocationStruct get userAccidentLocation => _userAccidentLocation;
  set userAccidentLocation(AccidentLocationStruct value) {
    _userAccidentLocation = value;
  }

  void updateUserAccidentLocationStruct(
      Function(AccidentLocationStruct) updateFn) {
    updateFn(_userAccidentLocation);
  }

  String _googleMapsSessionID = '';
  String get googleMapsSessionID => _googleMapsSessionID;
  set googleMapsSessionID(String value) {
    _googleMapsSessionID = value;
  }

  LatLng? _userDeviceLocation;
  LatLng? get userDeviceLocation => _userDeviceLocation;
  set userDeviceLocation(LatLng? value) {
    _userDeviceLocation = value;
  }

  LatLng? _headquartersLatLng = LatLng(38.95468, -92.366253);
  LatLng? get headquartersLatLng => _headquartersLatLng;
  set headquartersLatLng(LatLng? value) {
    _headquartersLatLng = value;
  }

  AccidentLocationStruct _startingAccidentLocation = AccidentLocationStruct();
  AccidentLocationStruct get startingAccidentLocation =>
      _startingAccidentLocation;
  set startingAccidentLocation(AccidentLocationStruct value) {
    _startingAccidentLocation = value;
  }

  void updateStartingAccidentLocationStruct(
      Function(AccidentLocationStruct) updateFn) {
    updateFn(_startingAccidentLocation);
  }

  ClaimStructureStruct _claimInProgress = ClaimStructureStruct();
  ClaimStructureStruct get claimInProgress => _claimInProgress;
  set claimInProgress(ClaimStructureStruct value) {
    _claimInProgress = value;
  }

  void updateClaimInProgressStruct(Function(ClaimStructureStruct) updateFn) {
    updateFn(_claimInProgress);
  }

  List<CountryStruct> _countryList = [
    CountryStruct.fromSerializableMap(jsonDecode(
        '{\"countryName_ja\":\"米国\",\"regionName_ja\":\"北米\",\"regionName_en\":\"North America\",\"countryName_en\":\"USA\"}')),
    CountryStruct.fromSerializableMap(jsonDecode(
        '{\"countryName_ja\":\"カナダ\",\"regionName_ja\":\"北米\",\"regionName_en\":\"North America\",\"countryName_en\":\"Canada\"}')),
    CountryStruct.fromSerializableMap(jsonDecode(
        '{\"countryName_ja\":\"アルゼンチン\",\"regionName_ja\":\"中南米\",\"regionName_en\":\"Central and South America\",\"countryName_en\":\"Argentina\"}')),
    CountryStruct.fromSerializableMap(jsonDecode(
        '{\"countryName_ja\":\"アンティグア・バーブーダ\",\"regionName_ja\":\"中南米\",\"regionName_en\":\"Central and South America\",\"countryName_en\":\"Antigua and Barbuda\"}')),
    CountryStruct.fromSerializableMap(jsonDecode(
        '{\"countryName_ja\":\"ウルグアイ\",\"regionName_ja\":\"中南米\",\"regionName_en\":\"Central and South America\",\"countryName_en\":\"Uruguay\"}')),
    CountryStruct.fromSerializableMap(jsonDecode(
        '{\"countryName_ja\":\"アイスランド\",\"regionName_ja\":\"欧州\",\"regionName_en\":\"Europe\",\"countryName_en\":\"Iceland\"}')),
    CountryStruct.fromSerializableMap(jsonDecode(
        '{\"countryName_ja\":\"アイルランド\",\"regionName_ja\":\"欧州\",\"regionName_en\":\"Europe\",\"countryName_en\":\"Ireland\"}')),
    CountryStruct.fromSerializableMap(jsonDecode(
        '{\"countryName_ja\":\"アゼルバイジャン\",\"regionName_ja\":\"欧州\",\"regionName_en\":\"Europe\",\"countryName_en\":\"Azerbaijan\"}')),
    CountryStruct.fromSerializableMap(jsonDecode(
        '{\"countryName_ja\":\"アルバニア\",\"regionName_ja\":\"欧州\",\"regionName_en\":\"Europe\",\"countryName_en\":\"Albania\"}')),
    CountryStruct.fromSerializableMap(jsonDecode(
        '{\"countryName_ja\":\"インド\",\"regionName_ja\":\"アジア\",\"regionName_en\":\"Asia\",\"countryName_en\":\"India\"}')),
    CountryStruct.fromSerializableMap(jsonDecode(
        '{\"countryName_ja\":\"インドネシア\",\"regionName_ja\":\"アジア\",\"regionName_en\":\"Asia\",\"countryName_en\":\"Indonesia\"}')),
    CountryStruct.fromSerializableMap(jsonDecode(
        '{\"countryName_ja\":\"カンボジア\",\"regionName_ja\":\"アジア\",\"regionName_en\":\"Asia\",\"countryName_en\":\"Cambodia\"}'))
  ];
  List<CountryStruct> get countryList => _countryList;
  set countryList(List<CountryStruct> value) {
    _countryList = value;
  }

  void addToCountryList(CountryStruct value) {
    countryList.add(value);
  }

  void removeFromCountryList(CountryStruct value) {
    countryList.remove(value);
  }

  void removeAtIndexFromCountryList(int index) {
    countryList.removeAt(index);
  }

  void updateCountryListAtIndex(
    int index,
    CountryStruct Function(CountryStruct) updateFn,
  ) {
    countryList[index] = updateFn(_countryList[index]);
  }

  void insertAtIndexInCountryList(int index, CountryStruct value) {
    countryList.insert(index, value);
  }

  String _notifyEmail = '';
  String get notifyEmail => _notifyEmail;
  set notifyEmail(String value) {
    _notifyEmail = value;
  }
}
