// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClaimStructureStruct extends BaseStruct {
  ClaimStructureStruct({
    String? insuranceType,
    String? policyNumber,
    String? policyTermStartDateStr,
    String? policyTermEndDateStr,
    String? creditCardType,
    String? membershipType,
    String? ccNum,
    String? travelScheduledDepartureDateStr,
    String? travelScheduledArrivalDateStr,
    String? claimantFamilyKanji,
    String? claimantGivenKanji,
    String? claimantFamilyKana,
    String? claimantGivenKana,
    String? insuredFamilyKanji,
    String? insuredGivenKanji,
    String? insuredFamilyKana,
    String? insuredGivenKana,
    String? relationshipToInsured,
    String? claimantAddressPostalCode,
    String? claimantAddressPrefecture,
    String? claimantAddressLine1,
    String? claimantAddressLine2,
    String? claimantBirthDateStr,
    String? claimantGender,
    String? claimantPhone,
    String? claimantDaytimePhone,
    String? claimantEmail,
    String? coverageType,
    String? injuryDateStr,
    String? symptomOnsetDateStr,
    String? firstHospitalVisitDateStr,
    String? firstHospitalJapanVisitDateStr,
    String? baggageDelayReason,
    String? injuryLocationRegion,
    String? injuryLocationCountry,
    String? injuryLocationCity,
    String? injuryLocationName,
    String? arrivalAirportName,
    String? arrivalDateStr,
    String? arrivalFlightNumber,
    String? injuryDetail,
    String? belongingsCondition,
    String? policeStation,
    String? policeRecordNumber,
    String? belongingPickupDateStr,
    String? belongingPickupLocation,
  })  : _insuranceType = insuranceType,
        _policyNumber = policyNumber,
        _policyTermStartDateStr = policyTermStartDateStr,
        _policyTermEndDateStr = policyTermEndDateStr,
        _creditCardType = creditCardType,
        _membershipType = membershipType,
        _ccNum = ccNum,
        _travelScheduledDepartureDateStr = travelScheduledDepartureDateStr,
        _travelScheduledArrivalDateStr = travelScheduledArrivalDateStr,
        _claimantFamilyKanji = claimantFamilyKanji,
        _claimantGivenKanji = claimantGivenKanji,
        _claimantFamilyKana = claimantFamilyKana,
        _claimantGivenKana = claimantGivenKana,
        _insuredFamilyKanji = insuredFamilyKanji,
        _insuredGivenKanji = insuredGivenKanji,
        _insuredFamilyKana = insuredFamilyKana,
        _insuredGivenKana = insuredGivenKana,
        _relationshipToInsured = relationshipToInsured,
        _claimantAddressPostalCode = claimantAddressPostalCode,
        _claimantAddressPrefecture = claimantAddressPrefecture,
        _claimantAddressLine1 = claimantAddressLine1,
        _claimantAddressLine2 = claimantAddressLine2,
        _claimantBirthDateStr = claimantBirthDateStr,
        _claimantGender = claimantGender,
        _claimantPhone = claimantPhone,
        _claimantDaytimePhone = claimantDaytimePhone,
        _claimantEmail = claimantEmail,
        _coverageType = coverageType,
        _injuryDateStr = injuryDateStr,
        _symptomOnsetDateStr = symptomOnsetDateStr,
        _firstHospitalVisitDateStr = firstHospitalVisitDateStr,
        _firstHospitalJapanVisitDateStr = firstHospitalJapanVisitDateStr,
        _baggageDelayReason = baggageDelayReason,
        _injuryLocationRegion = injuryLocationRegion,
        _injuryLocationCountry = injuryLocationCountry,
        _injuryLocationCity = injuryLocationCity,
        _injuryLocationName = injuryLocationName,
        _arrivalAirportName = arrivalAirportName,
        _arrivalDateStr = arrivalDateStr,
        _arrivalFlightNumber = arrivalFlightNumber,
        _injuryDetail = injuryDetail,
        _belongingsCondition = belongingsCondition,
        _policeStation = policeStation,
        _policeRecordNumber = policeRecordNumber,
        _belongingPickupDateStr = belongingPickupDateStr,
        _belongingPickupLocation = belongingPickupLocation;

  // "insuranceType" field.
  String? _insuranceType;
  String get insuranceType => _insuranceType ?? '';
  set insuranceType(String? val) => _insuranceType = val;

  bool hasInsuranceType() => _insuranceType != null;

  // "policyNumber" field.
  String? _policyNumber;
  String get policyNumber => _policyNumber ?? '';
  set policyNumber(String? val) => _policyNumber = val;

  bool hasPolicyNumber() => _policyNumber != null;

  // "policyTermStartDateStr" field.
  String? _policyTermStartDateStr;
  String get policyTermStartDateStr => _policyTermStartDateStr ?? '';
  set policyTermStartDateStr(String? val) => _policyTermStartDateStr = val;

  bool hasPolicyTermStartDateStr() => _policyTermStartDateStr != null;

  // "policyTermEndDateStr" field.
  String? _policyTermEndDateStr;
  String get policyTermEndDateStr => _policyTermEndDateStr ?? '';
  set policyTermEndDateStr(String? val) => _policyTermEndDateStr = val;

  bool hasPolicyTermEndDateStr() => _policyTermEndDateStr != null;

  // "creditCardType" field.
  String? _creditCardType;
  String get creditCardType => _creditCardType ?? '';
  set creditCardType(String? val) => _creditCardType = val;

  bool hasCreditCardType() => _creditCardType != null;

  // "membershipType" field.
  String? _membershipType;
  String get membershipType => _membershipType ?? '';
  set membershipType(String? val) => _membershipType = val;

  bool hasMembershipType() => _membershipType != null;

  // "ccNum" field.
  String? _ccNum;
  String get ccNum => _ccNum ?? '';
  set ccNum(String? val) => _ccNum = val;

  bool hasCcNum() => _ccNum != null;

  // "travelScheduledDepartureDateStr" field.
  String? _travelScheduledDepartureDateStr;
  String get travelScheduledDepartureDateStr =>
      _travelScheduledDepartureDateStr ?? '';
  set travelScheduledDepartureDateStr(String? val) =>
      _travelScheduledDepartureDateStr = val;

  bool hasTravelScheduledDepartureDateStr() =>
      _travelScheduledDepartureDateStr != null;

  // "travelScheduledArrivalDateStr" field.
  String? _travelScheduledArrivalDateStr;
  String get travelScheduledArrivalDateStr =>
      _travelScheduledArrivalDateStr ?? '';
  set travelScheduledArrivalDateStr(String? val) =>
      _travelScheduledArrivalDateStr = val;

  bool hasTravelScheduledArrivalDateStr() =>
      _travelScheduledArrivalDateStr != null;

  // "claimantFamilyKanji" field.
  String? _claimantFamilyKanji;
  String get claimantFamilyKanji => _claimantFamilyKanji ?? '';
  set claimantFamilyKanji(String? val) => _claimantFamilyKanji = val;

  bool hasClaimantFamilyKanji() => _claimantFamilyKanji != null;

  // "claimantGivenKanji" field.
  String? _claimantGivenKanji;
  String get claimantGivenKanji => _claimantGivenKanji ?? '';
  set claimantGivenKanji(String? val) => _claimantGivenKanji = val;

  bool hasClaimantGivenKanji() => _claimantGivenKanji != null;

  // "claimantFamilyKana" field.
  String? _claimantFamilyKana;
  String get claimantFamilyKana => _claimantFamilyKana ?? '';
  set claimantFamilyKana(String? val) => _claimantFamilyKana = val;

  bool hasClaimantFamilyKana() => _claimantFamilyKana != null;

  // "claimantGivenKana" field.
  String? _claimantGivenKana;
  String get claimantGivenKana => _claimantGivenKana ?? '';
  set claimantGivenKana(String? val) => _claimantGivenKana = val;

  bool hasClaimantGivenKana() => _claimantGivenKana != null;

  // "insuredFamilyKanji" field.
  String? _insuredFamilyKanji;
  String get insuredFamilyKanji => _insuredFamilyKanji ?? '';
  set insuredFamilyKanji(String? val) => _insuredFamilyKanji = val;

  bool hasInsuredFamilyKanji() => _insuredFamilyKanji != null;

  // "insuredGivenKanji" field.
  String? _insuredGivenKanji;
  String get insuredGivenKanji => _insuredGivenKanji ?? '';
  set insuredGivenKanji(String? val) => _insuredGivenKanji = val;

  bool hasInsuredGivenKanji() => _insuredGivenKanji != null;

  // "insuredFamilyKana" field.
  String? _insuredFamilyKana;
  String get insuredFamilyKana => _insuredFamilyKana ?? '';
  set insuredFamilyKana(String? val) => _insuredFamilyKana = val;

  bool hasInsuredFamilyKana() => _insuredFamilyKana != null;

  // "insuredGivenKana" field.
  String? _insuredGivenKana;
  String get insuredGivenKana => _insuredGivenKana ?? '';
  set insuredGivenKana(String? val) => _insuredGivenKana = val;

  bool hasInsuredGivenKana() => _insuredGivenKana != null;

  // "relationshipToInsured" field.
  String? _relationshipToInsured;
  String get relationshipToInsured => _relationshipToInsured ?? '';
  set relationshipToInsured(String? val) => _relationshipToInsured = val;

  bool hasRelationshipToInsured() => _relationshipToInsured != null;

  // "claimantAddressPostalCode" field.
  String? _claimantAddressPostalCode;
  String get claimantAddressPostalCode => _claimantAddressPostalCode ?? '';
  set claimantAddressPostalCode(String? val) =>
      _claimantAddressPostalCode = val;

  bool hasClaimantAddressPostalCode() => _claimantAddressPostalCode != null;

  // "claimantAddressPrefecture" field.
  String? _claimantAddressPrefecture;
  String get claimantAddressPrefecture => _claimantAddressPrefecture ?? '';
  set claimantAddressPrefecture(String? val) =>
      _claimantAddressPrefecture = val;

  bool hasClaimantAddressPrefecture() => _claimantAddressPrefecture != null;

  // "claimantAddressLine1" field.
  String? _claimantAddressLine1;
  String get claimantAddressLine1 => _claimantAddressLine1 ?? '';
  set claimantAddressLine1(String? val) => _claimantAddressLine1 = val;

  bool hasClaimantAddressLine1() => _claimantAddressLine1 != null;

  // "claimantAddressLine2" field.
  String? _claimantAddressLine2;
  String get claimantAddressLine2 => _claimantAddressLine2 ?? '';
  set claimantAddressLine2(String? val) => _claimantAddressLine2 = val;

  bool hasClaimantAddressLine2() => _claimantAddressLine2 != null;

  // "claimantBirthDateStr" field.
  String? _claimantBirthDateStr;
  String get claimantBirthDateStr => _claimantBirthDateStr ?? '';
  set claimantBirthDateStr(String? val) => _claimantBirthDateStr = val;

  bool hasClaimantBirthDateStr() => _claimantBirthDateStr != null;

  // "claimantGender" field.
  String? _claimantGender;
  String get claimantGender => _claimantGender ?? '';
  set claimantGender(String? val) => _claimantGender = val;

  bool hasClaimantGender() => _claimantGender != null;

  // "claimantPhone" field.
  String? _claimantPhone;
  String get claimantPhone => _claimantPhone ?? '';
  set claimantPhone(String? val) => _claimantPhone = val;

  bool hasClaimantPhone() => _claimantPhone != null;

  // "claimantDaytimePhone" field.
  String? _claimantDaytimePhone;
  String get claimantDaytimePhone => _claimantDaytimePhone ?? '';
  set claimantDaytimePhone(String? val) => _claimantDaytimePhone = val;

  bool hasClaimantDaytimePhone() => _claimantDaytimePhone != null;

  // "claimantEmail" field.
  String? _claimantEmail;
  String get claimantEmail => _claimantEmail ?? '';
  set claimantEmail(String? val) => _claimantEmail = val;

  bool hasClaimantEmail() => _claimantEmail != null;

  // "coverageType" field.
  String? _coverageType;
  String get coverageType => _coverageType ?? '';
  set coverageType(String? val) => _coverageType = val;

  bool hasCoverageType() => _coverageType != null;

  // "injuryDateStr" field.
  String? _injuryDateStr;
  String get injuryDateStr => _injuryDateStr ?? '';
  set injuryDateStr(String? val) => _injuryDateStr = val;

  bool hasInjuryDateStr() => _injuryDateStr != null;

  // "symptomOnsetDateStr" field.
  String? _symptomOnsetDateStr;
  String get symptomOnsetDateStr => _symptomOnsetDateStr ?? '';
  set symptomOnsetDateStr(String? val) => _symptomOnsetDateStr = val;

  bool hasSymptomOnsetDateStr() => _symptomOnsetDateStr != null;

  // "firstHospitalVisitDateStr" field.
  String? _firstHospitalVisitDateStr;
  String get firstHospitalVisitDateStr => _firstHospitalVisitDateStr ?? '';
  set firstHospitalVisitDateStr(String? val) =>
      _firstHospitalVisitDateStr = val;

  bool hasFirstHospitalVisitDateStr() => _firstHospitalVisitDateStr != null;

  // "firstHospitalJapanVisitDateStr" field.
  String? _firstHospitalJapanVisitDateStr;
  String get firstHospitalJapanVisitDateStr =>
      _firstHospitalJapanVisitDateStr ?? '';
  set firstHospitalJapanVisitDateStr(String? val) =>
      _firstHospitalJapanVisitDateStr = val;

  bool hasFirstHospitalJapanVisitDateStr() =>
      _firstHospitalJapanVisitDateStr != null;

  // "baggageDelayReason" field.
  String? _baggageDelayReason;
  String get baggageDelayReason => _baggageDelayReason ?? '';
  set baggageDelayReason(String? val) => _baggageDelayReason = val;

  bool hasBaggageDelayReason() => _baggageDelayReason != null;

  // "injuryLocationRegion" field.
  String? _injuryLocationRegion;
  String get injuryLocationRegion => _injuryLocationRegion ?? '';
  set injuryLocationRegion(String? val) => _injuryLocationRegion = val;

  bool hasInjuryLocationRegion() => _injuryLocationRegion != null;

  // "injuryLocationCountry" field.
  String? _injuryLocationCountry;
  String get injuryLocationCountry => _injuryLocationCountry ?? '';
  set injuryLocationCountry(String? val) => _injuryLocationCountry = val;

  bool hasInjuryLocationCountry() => _injuryLocationCountry != null;

  // "injuryLocationCity" field.
  String? _injuryLocationCity;
  String get injuryLocationCity => _injuryLocationCity ?? '';
  set injuryLocationCity(String? val) => _injuryLocationCity = val;

  bool hasInjuryLocationCity() => _injuryLocationCity != null;

  // "injuryLocationName" field.
  String? _injuryLocationName;
  String get injuryLocationName => _injuryLocationName ?? '';
  set injuryLocationName(String? val) => _injuryLocationName = val;

  bool hasInjuryLocationName() => _injuryLocationName != null;

  // "arrivalAirportName" field.
  String? _arrivalAirportName;
  String get arrivalAirportName => _arrivalAirportName ?? '';
  set arrivalAirportName(String? val) => _arrivalAirportName = val;

  bool hasArrivalAirportName() => _arrivalAirportName != null;

  // "arrivalDateStr" field.
  String? _arrivalDateStr;
  String get arrivalDateStr => _arrivalDateStr ?? '';
  set arrivalDateStr(String? val) => _arrivalDateStr = val;

  bool hasArrivalDateStr() => _arrivalDateStr != null;

  // "arrivalFlightNumber" field.
  String? _arrivalFlightNumber;
  String get arrivalFlightNumber => _arrivalFlightNumber ?? '';
  set arrivalFlightNumber(String? val) => _arrivalFlightNumber = val;

  bool hasArrivalFlightNumber() => _arrivalFlightNumber != null;

  // "injuryDetail" field.
  String? _injuryDetail;
  String get injuryDetail => _injuryDetail ?? '';
  set injuryDetail(String? val) => _injuryDetail = val;

  bool hasInjuryDetail() => _injuryDetail != null;

  // "belongingsCondition" field.
  String? _belongingsCondition;
  String get belongingsCondition => _belongingsCondition ?? '';
  set belongingsCondition(String? val) => _belongingsCondition = val;

  bool hasBelongingsCondition() => _belongingsCondition != null;

  // "policeStation" field.
  String? _policeStation;
  String get policeStation => _policeStation ?? '';
  set policeStation(String? val) => _policeStation = val;

  bool hasPoliceStation() => _policeStation != null;

  // "policeRecordNumber" field.
  String? _policeRecordNumber;
  String get policeRecordNumber => _policeRecordNumber ?? '';
  set policeRecordNumber(String? val) => _policeRecordNumber = val;

  bool hasPoliceRecordNumber() => _policeRecordNumber != null;

  // "belongingPickupDateStr" field.
  String? _belongingPickupDateStr;
  String get belongingPickupDateStr => _belongingPickupDateStr ?? '';
  set belongingPickupDateStr(String? val) => _belongingPickupDateStr = val;

  bool hasBelongingPickupDateStr() => _belongingPickupDateStr != null;

  // "belongingPickupLocation" field.
  String? _belongingPickupLocation;
  String get belongingPickupLocation => _belongingPickupLocation ?? '';
  set belongingPickupLocation(String? val) => _belongingPickupLocation = val;

  bool hasBelongingPickupLocation() => _belongingPickupLocation != null;

  static ClaimStructureStruct fromMap(Map<String, dynamic> data) =>
      ClaimStructureStruct(
        insuranceType: data['insuranceType'] as String?,
        policyNumber: data['policyNumber'] as String?,
        policyTermStartDateStr: data['policyTermStartDateStr'] as String?,
        policyTermEndDateStr: data['policyTermEndDateStr'] as String?,
        creditCardType: data['creditCardType'] as String?,
        membershipType: data['membershipType'] as String?,
        ccNum: data['ccNum'] as String?,
        travelScheduledDepartureDateStr:
            data['travelScheduledDepartureDateStr'] as String?,
        travelScheduledArrivalDateStr:
            data['travelScheduledArrivalDateStr'] as String?,
        claimantFamilyKanji: data['claimantFamilyKanji'] as String?,
        claimantGivenKanji: data['claimantGivenKanji'] as String?,
        claimantFamilyKana: data['claimantFamilyKana'] as String?,
        claimantGivenKana: data['claimantGivenKana'] as String?,
        insuredFamilyKanji: data['insuredFamilyKanji'] as String?,
        insuredGivenKanji: data['insuredGivenKanji'] as String?,
        insuredFamilyKana: data['insuredFamilyKana'] as String?,
        insuredGivenKana: data['insuredGivenKana'] as String?,
        relationshipToInsured: data['relationshipToInsured'] as String?,
        claimantAddressPostalCode: data['claimantAddressPostalCode'] as String?,
        claimantAddressPrefecture: data['claimantAddressPrefecture'] as String?,
        claimantAddressLine1: data['claimantAddressLine1'] as String?,
        claimantAddressLine2: data['claimantAddressLine2'] as String?,
        claimantBirthDateStr: data['claimantBirthDateStr'] as String?,
        claimantGender: data['claimantGender'] as String?,
        claimantPhone: data['claimantPhone'] as String?,
        claimantDaytimePhone: data['claimantDaytimePhone'] as String?,
        claimantEmail: data['claimantEmail'] as String?,
        coverageType: data['coverageType'] as String?,
        injuryDateStr: data['injuryDateStr'] as String?,
        symptomOnsetDateStr: data['symptomOnsetDateStr'] as String?,
        firstHospitalVisitDateStr: data['firstHospitalVisitDateStr'] as String?,
        firstHospitalJapanVisitDateStr:
            data['firstHospitalJapanVisitDateStr'] as String?,
        baggageDelayReason: data['baggageDelayReason'] as String?,
        injuryLocationRegion: data['injuryLocationRegion'] as String?,
        injuryLocationCountry: data['injuryLocationCountry'] as String?,
        injuryLocationCity: data['injuryLocationCity'] as String?,
        injuryLocationName: data['injuryLocationName'] as String?,
        arrivalAirportName: data['arrivalAirportName'] as String?,
        arrivalDateStr: data['arrivalDateStr'] as String?,
        arrivalFlightNumber: data['arrivalFlightNumber'] as String?,
        injuryDetail: data['injuryDetail'] as String?,
        belongingsCondition: data['belongingsCondition'] as String?,
        policeStation: data['policeStation'] as String?,
        policeRecordNumber: data['policeRecordNumber'] as String?,
        belongingPickupDateStr: data['belongingPickupDateStr'] as String?,
        belongingPickupLocation: data['belongingPickupLocation'] as String?,
      );

  static ClaimStructureStruct? maybeFromMap(dynamic data) => data is Map
      ? ClaimStructureStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'insuranceType': _insuranceType,
        'policyNumber': _policyNumber,
        'policyTermStartDateStr': _policyTermStartDateStr,
        'policyTermEndDateStr': _policyTermEndDateStr,
        'creditCardType': _creditCardType,
        'membershipType': _membershipType,
        'ccNum': _ccNum,
        'travelScheduledDepartureDateStr': _travelScheduledDepartureDateStr,
        'travelScheduledArrivalDateStr': _travelScheduledArrivalDateStr,
        'claimantFamilyKanji': _claimantFamilyKanji,
        'claimantGivenKanji': _claimantGivenKanji,
        'claimantFamilyKana': _claimantFamilyKana,
        'claimantGivenKana': _claimantGivenKana,
        'insuredFamilyKanji': _insuredFamilyKanji,
        'insuredGivenKanji': _insuredGivenKanji,
        'insuredFamilyKana': _insuredFamilyKana,
        'insuredGivenKana': _insuredGivenKana,
        'relationshipToInsured': _relationshipToInsured,
        'claimantAddressPostalCode': _claimantAddressPostalCode,
        'claimantAddressPrefecture': _claimantAddressPrefecture,
        'claimantAddressLine1': _claimantAddressLine1,
        'claimantAddressLine2': _claimantAddressLine2,
        'claimantBirthDateStr': _claimantBirthDateStr,
        'claimantGender': _claimantGender,
        'claimantPhone': _claimantPhone,
        'claimantDaytimePhone': _claimantDaytimePhone,
        'claimantEmail': _claimantEmail,
        'coverageType': _coverageType,
        'injuryDateStr': _injuryDateStr,
        'symptomOnsetDateStr': _symptomOnsetDateStr,
        'firstHospitalVisitDateStr': _firstHospitalVisitDateStr,
        'firstHospitalJapanVisitDateStr': _firstHospitalJapanVisitDateStr,
        'baggageDelayReason': _baggageDelayReason,
        'injuryLocationRegion': _injuryLocationRegion,
        'injuryLocationCountry': _injuryLocationCountry,
        'injuryLocationCity': _injuryLocationCity,
        'injuryLocationName': _injuryLocationName,
        'arrivalAirportName': _arrivalAirportName,
        'arrivalDateStr': _arrivalDateStr,
        'arrivalFlightNumber': _arrivalFlightNumber,
        'injuryDetail': _injuryDetail,
        'belongingsCondition': _belongingsCondition,
        'policeStation': _policeStation,
        'policeRecordNumber': _policeRecordNumber,
        'belongingPickupDateStr': _belongingPickupDateStr,
        'belongingPickupLocation': _belongingPickupLocation,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'insuranceType': serializeParam(
          _insuranceType,
          ParamType.String,
        ),
        'policyNumber': serializeParam(
          _policyNumber,
          ParamType.String,
        ),
        'policyTermStartDateStr': serializeParam(
          _policyTermStartDateStr,
          ParamType.String,
        ),
        'policyTermEndDateStr': serializeParam(
          _policyTermEndDateStr,
          ParamType.String,
        ),
        'creditCardType': serializeParam(
          _creditCardType,
          ParamType.String,
        ),
        'membershipType': serializeParam(
          _membershipType,
          ParamType.String,
        ),
        'ccNum': serializeParam(
          _ccNum,
          ParamType.String,
        ),
        'travelScheduledDepartureDateStr': serializeParam(
          _travelScheduledDepartureDateStr,
          ParamType.String,
        ),
        'travelScheduledArrivalDateStr': serializeParam(
          _travelScheduledArrivalDateStr,
          ParamType.String,
        ),
        'claimantFamilyKanji': serializeParam(
          _claimantFamilyKanji,
          ParamType.String,
        ),
        'claimantGivenKanji': serializeParam(
          _claimantGivenKanji,
          ParamType.String,
        ),
        'claimantFamilyKana': serializeParam(
          _claimantFamilyKana,
          ParamType.String,
        ),
        'claimantGivenKana': serializeParam(
          _claimantGivenKana,
          ParamType.String,
        ),
        'insuredFamilyKanji': serializeParam(
          _insuredFamilyKanji,
          ParamType.String,
        ),
        'insuredGivenKanji': serializeParam(
          _insuredGivenKanji,
          ParamType.String,
        ),
        'insuredFamilyKana': serializeParam(
          _insuredFamilyKana,
          ParamType.String,
        ),
        'insuredGivenKana': serializeParam(
          _insuredGivenKana,
          ParamType.String,
        ),
        'relationshipToInsured': serializeParam(
          _relationshipToInsured,
          ParamType.String,
        ),
        'claimantAddressPostalCode': serializeParam(
          _claimantAddressPostalCode,
          ParamType.String,
        ),
        'claimantAddressPrefecture': serializeParam(
          _claimantAddressPrefecture,
          ParamType.String,
        ),
        'claimantAddressLine1': serializeParam(
          _claimantAddressLine1,
          ParamType.String,
        ),
        'claimantAddressLine2': serializeParam(
          _claimantAddressLine2,
          ParamType.String,
        ),
        'claimantBirthDateStr': serializeParam(
          _claimantBirthDateStr,
          ParamType.String,
        ),
        'claimantGender': serializeParam(
          _claimantGender,
          ParamType.String,
        ),
        'claimantPhone': serializeParam(
          _claimantPhone,
          ParamType.String,
        ),
        'claimantDaytimePhone': serializeParam(
          _claimantDaytimePhone,
          ParamType.String,
        ),
        'claimantEmail': serializeParam(
          _claimantEmail,
          ParamType.String,
        ),
        'coverageType': serializeParam(
          _coverageType,
          ParamType.String,
        ),
        'injuryDateStr': serializeParam(
          _injuryDateStr,
          ParamType.String,
        ),
        'symptomOnsetDateStr': serializeParam(
          _symptomOnsetDateStr,
          ParamType.String,
        ),
        'firstHospitalVisitDateStr': serializeParam(
          _firstHospitalVisitDateStr,
          ParamType.String,
        ),
        'firstHospitalJapanVisitDateStr': serializeParam(
          _firstHospitalJapanVisitDateStr,
          ParamType.String,
        ),
        'baggageDelayReason': serializeParam(
          _baggageDelayReason,
          ParamType.String,
        ),
        'injuryLocationRegion': serializeParam(
          _injuryLocationRegion,
          ParamType.String,
        ),
        'injuryLocationCountry': serializeParam(
          _injuryLocationCountry,
          ParamType.String,
        ),
        'injuryLocationCity': serializeParam(
          _injuryLocationCity,
          ParamType.String,
        ),
        'injuryLocationName': serializeParam(
          _injuryLocationName,
          ParamType.String,
        ),
        'arrivalAirportName': serializeParam(
          _arrivalAirportName,
          ParamType.String,
        ),
        'arrivalDateStr': serializeParam(
          _arrivalDateStr,
          ParamType.String,
        ),
        'arrivalFlightNumber': serializeParam(
          _arrivalFlightNumber,
          ParamType.String,
        ),
        'injuryDetail': serializeParam(
          _injuryDetail,
          ParamType.String,
        ),
        'belongingsCondition': serializeParam(
          _belongingsCondition,
          ParamType.String,
        ),
        'policeStation': serializeParam(
          _policeStation,
          ParamType.String,
        ),
        'policeRecordNumber': serializeParam(
          _policeRecordNumber,
          ParamType.String,
        ),
        'belongingPickupDateStr': serializeParam(
          _belongingPickupDateStr,
          ParamType.String,
        ),
        'belongingPickupLocation': serializeParam(
          _belongingPickupLocation,
          ParamType.String,
        ),
      }.withoutNulls;

  static ClaimStructureStruct fromSerializableMap(Map<String, dynamic> data) =>
      ClaimStructureStruct(
        insuranceType: deserializeParam(
          data['insuranceType'],
          ParamType.String,
          false,
        ),
        policyNumber: deserializeParam(
          data['policyNumber'],
          ParamType.String,
          false,
        ),
        policyTermStartDateStr: deserializeParam(
          data['policyTermStartDateStr'],
          ParamType.String,
          false,
        ),
        policyTermEndDateStr: deserializeParam(
          data['policyTermEndDateStr'],
          ParamType.String,
          false,
        ),
        creditCardType: deserializeParam(
          data['creditCardType'],
          ParamType.String,
          false,
        ),
        membershipType: deserializeParam(
          data['membershipType'],
          ParamType.String,
          false,
        ),
        ccNum: deserializeParam(
          data['ccNum'],
          ParamType.String,
          false,
        ),
        travelScheduledDepartureDateStr: deserializeParam(
          data['travelScheduledDepartureDateStr'],
          ParamType.String,
          false,
        ),
        travelScheduledArrivalDateStr: deserializeParam(
          data['travelScheduledArrivalDateStr'],
          ParamType.String,
          false,
        ),
        claimantFamilyKanji: deserializeParam(
          data['claimantFamilyKanji'],
          ParamType.String,
          false,
        ),
        claimantGivenKanji: deserializeParam(
          data['claimantGivenKanji'],
          ParamType.String,
          false,
        ),
        claimantFamilyKana: deserializeParam(
          data['claimantFamilyKana'],
          ParamType.String,
          false,
        ),
        claimantGivenKana: deserializeParam(
          data['claimantGivenKana'],
          ParamType.String,
          false,
        ),
        insuredFamilyKanji: deserializeParam(
          data['insuredFamilyKanji'],
          ParamType.String,
          false,
        ),
        insuredGivenKanji: deserializeParam(
          data['insuredGivenKanji'],
          ParamType.String,
          false,
        ),
        insuredFamilyKana: deserializeParam(
          data['insuredFamilyKana'],
          ParamType.String,
          false,
        ),
        insuredGivenKana: deserializeParam(
          data['insuredGivenKana'],
          ParamType.String,
          false,
        ),
        relationshipToInsured: deserializeParam(
          data['relationshipToInsured'],
          ParamType.String,
          false,
        ),
        claimantAddressPostalCode: deserializeParam(
          data['claimantAddressPostalCode'],
          ParamType.String,
          false,
        ),
        claimantAddressPrefecture: deserializeParam(
          data['claimantAddressPrefecture'],
          ParamType.String,
          false,
        ),
        claimantAddressLine1: deserializeParam(
          data['claimantAddressLine1'],
          ParamType.String,
          false,
        ),
        claimantAddressLine2: deserializeParam(
          data['claimantAddressLine2'],
          ParamType.String,
          false,
        ),
        claimantBirthDateStr: deserializeParam(
          data['claimantBirthDateStr'],
          ParamType.String,
          false,
        ),
        claimantGender: deserializeParam(
          data['claimantGender'],
          ParamType.String,
          false,
        ),
        claimantPhone: deserializeParam(
          data['claimantPhone'],
          ParamType.String,
          false,
        ),
        claimantDaytimePhone: deserializeParam(
          data['claimantDaytimePhone'],
          ParamType.String,
          false,
        ),
        claimantEmail: deserializeParam(
          data['claimantEmail'],
          ParamType.String,
          false,
        ),
        coverageType: deserializeParam(
          data['coverageType'],
          ParamType.String,
          false,
        ),
        injuryDateStr: deserializeParam(
          data['injuryDateStr'],
          ParamType.String,
          false,
        ),
        symptomOnsetDateStr: deserializeParam(
          data['symptomOnsetDateStr'],
          ParamType.String,
          false,
        ),
        firstHospitalVisitDateStr: deserializeParam(
          data['firstHospitalVisitDateStr'],
          ParamType.String,
          false,
        ),
        firstHospitalJapanVisitDateStr: deserializeParam(
          data['firstHospitalJapanVisitDateStr'],
          ParamType.String,
          false,
        ),
        baggageDelayReason: deserializeParam(
          data['baggageDelayReason'],
          ParamType.String,
          false,
        ),
        injuryLocationRegion: deserializeParam(
          data['injuryLocationRegion'],
          ParamType.String,
          false,
        ),
        injuryLocationCountry: deserializeParam(
          data['injuryLocationCountry'],
          ParamType.String,
          false,
        ),
        injuryLocationCity: deserializeParam(
          data['injuryLocationCity'],
          ParamType.String,
          false,
        ),
        injuryLocationName: deserializeParam(
          data['injuryLocationName'],
          ParamType.String,
          false,
        ),
        arrivalAirportName: deserializeParam(
          data['arrivalAirportName'],
          ParamType.String,
          false,
        ),
        arrivalDateStr: deserializeParam(
          data['arrivalDateStr'],
          ParamType.String,
          false,
        ),
        arrivalFlightNumber: deserializeParam(
          data['arrivalFlightNumber'],
          ParamType.String,
          false,
        ),
        injuryDetail: deserializeParam(
          data['injuryDetail'],
          ParamType.String,
          false,
        ),
        belongingsCondition: deserializeParam(
          data['belongingsCondition'],
          ParamType.String,
          false,
        ),
        policeStation: deserializeParam(
          data['policeStation'],
          ParamType.String,
          false,
        ),
        policeRecordNumber: deserializeParam(
          data['policeRecordNumber'],
          ParamType.String,
          false,
        ),
        belongingPickupDateStr: deserializeParam(
          data['belongingPickupDateStr'],
          ParamType.String,
          false,
        ),
        belongingPickupLocation: deserializeParam(
          data['belongingPickupLocation'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ClaimStructureStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ClaimStructureStruct &&
        insuranceType == other.insuranceType &&
        policyNumber == other.policyNumber &&
        policyTermStartDateStr == other.policyTermStartDateStr &&
        policyTermEndDateStr == other.policyTermEndDateStr &&
        creditCardType == other.creditCardType &&
        membershipType == other.membershipType &&
        ccNum == other.ccNum &&
        travelScheduledDepartureDateStr ==
            other.travelScheduledDepartureDateStr &&
        travelScheduledArrivalDateStr == other.travelScheduledArrivalDateStr &&
        claimantFamilyKanji == other.claimantFamilyKanji &&
        claimantGivenKanji == other.claimantGivenKanji &&
        claimantFamilyKana == other.claimantFamilyKana &&
        claimantGivenKana == other.claimantGivenKana &&
        insuredFamilyKanji == other.insuredFamilyKanji &&
        insuredGivenKanji == other.insuredGivenKanji &&
        insuredFamilyKana == other.insuredFamilyKana &&
        insuredGivenKana == other.insuredGivenKana &&
        relationshipToInsured == other.relationshipToInsured &&
        claimantAddressPostalCode == other.claimantAddressPostalCode &&
        claimantAddressPrefecture == other.claimantAddressPrefecture &&
        claimantAddressLine1 == other.claimantAddressLine1 &&
        claimantAddressLine2 == other.claimantAddressLine2 &&
        claimantBirthDateStr == other.claimantBirthDateStr &&
        claimantGender == other.claimantGender &&
        claimantPhone == other.claimantPhone &&
        claimantDaytimePhone == other.claimantDaytimePhone &&
        claimantEmail == other.claimantEmail &&
        coverageType == other.coverageType &&
        injuryDateStr == other.injuryDateStr &&
        symptomOnsetDateStr == other.symptomOnsetDateStr &&
        firstHospitalVisitDateStr == other.firstHospitalVisitDateStr &&
        firstHospitalJapanVisitDateStr ==
            other.firstHospitalJapanVisitDateStr &&
        baggageDelayReason == other.baggageDelayReason &&
        injuryLocationRegion == other.injuryLocationRegion &&
        injuryLocationCountry == other.injuryLocationCountry &&
        injuryLocationCity == other.injuryLocationCity &&
        injuryLocationName == other.injuryLocationName &&
        arrivalAirportName == other.arrivalAirportName &&
        arrivalDateStr == other.arrivalDateStr &&
        arrivalFlightNumber == other.arrivalFlightNumber &&
        injuryDetail == other.injuryDetail &&
        belongingsCondition == other.belongingsCondition &&
        policeStation == other.policeStation &&
        policeRecordNumber == other.policeRecordNumber &&
        belongingPickupDateStr == other.belongingPickupDateStr &&
        belongingPickupLocation == other.belongingPickupLocation;
  }

  @override
  int get hashCode => const ListEquality().hash([
        insuranceType,
        policyNumber,
        policyTermStartDateStr,
        policyTermEndDateStr,
        creditCardType,
        membershipType,
        ccNum,
        travelScheduledDepartureDateStr,
        travelScheduledArrivalDateStr,
        claimantFamilyKanji,
        claimantGivenKanji,
        claimantFamilyKana,
        claimantGivenKana,
        insuredFamilyKanji,
        insuredGivenKanji,
        insuredFamilyKana,
        insuredGivenKana,
        relationshipToInsured,
        claimantAddressPostalCode,
        claimantAddressPrefecture,
        claimantAddressLine1,
        claimantAddressLine2,
        claimantBirthDateStr,
        claimantGender,
        claimantPhone,
        claimantDaytimePhone,
        claimantEmail,
        coverageType,
        injuryDateStr,
        symptomOnsetDateStr,
        firstHospitalVisitDateStr,
        firstHospitalJapanVisitDateStr,
        baggageDelayReason,
        injuryLocationRegion,
        injuryLocationCountry,
        injuryLocationCity,
        injuryLocationName,
        arrivalAirportName,
        arrivalDateStr,
        arrivalFlightNumber,
        injuryDetail,
        belongingsCondition,
        policeStation,
        policeRecordNumber,
        belongingPickupDateStr,
        belongingPickupLocation
      ]);
}

ClaimStructureStruct createClaimStructureStruct({
  String? insuranceType,
  String? policyNumber,
  String? policyTermStartDateStr,
  String? policyTermEndDateStr,
  String? creditCardType,
  String? membershipType,
  String? ccNum,
  String? travelScheduledDepartureDateStr,
  String? travelScheduledArrivalDateStr,
  String? claimantFamilyKanji,
  String? claimantGivenKanji,
  String? claimantFamilyKana,
  String? claimantGivenKana,
  String? insuredFamilyKanji,
  String? insuredGivenKanji,
  String? insuredFamilyKana,
  String? insuredGivenKana,
  String? relationshipToInsured,
  String? claimantAddressPostalCode,
  String? claimantAddressPrefecture,
  String? claimantAddressLine1,
  String? claimantAddressLine2,
  String? claimantBirthDateStr,
  String? claimantGender,
  String? claimantPhone,
  String? claimantDaytimePhone,
  String? claimantEmail,
  String? coverageType,
  String? injuryDateStr,
  String? symptomOnsetDateStr,
  String? firstHospitalVisitDateStr,
  String? firstHospitalJapanVisitDateStr,
  String? baggageDelayReason,
  String? injuryLocationRegion,
  String? injuryLocationCountry,
  String? injuryLocationCity,
  String? injuryLocationName,
  String? arrivalAirportName,
  String? arrivalDateStr,
  String? arrivalFlightNumber,
  String? injuryDetail,
  String? belongingsCondition,
  String? policeStation,
  String? policeRecordNumber,
  String? belongingPickupDateStr,
  String? belongingPickupLocation,
}) =>
    ClaimStructureStruct(
      insuranceType: insuranceType,
      policyNumber: policyNumber,
      policyTermStartDateStr: policyTermStartDateStr,
      policyTermEndDateStr: policyTermEndDateStr,
      creditCardType: creditCardType,
      membershipType: membershipType,
      ccNum: ccNum,
      travelScheduledDepartureDateStr: travelScheduledDepartureDateStr,
      travelScheduledArrivalDateStr: travelScheduledArrivalDateStr,
      claimantFamilyKanji: claimantFamilyKanji,
      claimantGivenKanji: claimantGivenKanji,
      claimantFamilyKana: claimantFamilyKana,
      claimantGivenKana: claimantGivenKana,
      insuredFamilyKanji: insuredFamilyKanji,
      insuredGivenKanji: insuredGivenKanji,
      insuredFamilyKana: insuredFamilyKana,
      insuredGivenKana: insuredGivenKana,
      relationshipToInsured: relationshipToInsured,
      claimantAddressPostalCode: claimantAddressPostalCode,
      claimantAddressPrefecture: claimantAddressPrefecture,
      claimantAddressLine1: claimantAddressLine1,
      claimantAddressLine2: claimantAddressLine2,
      claimantBirthDateStr: claimantBirthDateStr,
      claimantGender: claimantGender,
      claimantPhone: claimantPhone,
      claimantDaytimePhone: claimantDaytimePhone,
      claimantEmail: claimantEmail,
      coverageType: coverageType,
      injuryDateStr: injuryDateStr,
      symptomOnsetDateStr: symptomOnsetDateStr,
      firstHospitalVisitDateStr: firstHospitalVisitDateStr,
      firstHospitalJapanVisitDateStr: firstHospitalJapanVisitDateStr,
      baggageDelayReason: baggageDelayReason,
      injuryLocationRegion: injuryLocationRegion,
      injuryLocationCountry: injuryLocationCountry,
      injuryLocationCity: injuryLocationCity,
      injuryLocationName: injuryLocationName,
      arrivalAirportName: arrivalAirportName,
      arrivalDateStr: arrivalDateStr,
      arrivalFlightNumber: arrivalFlightNumber,
      injuryDetail: injuryDetail,
      belongingsCondition: belongingsCondition,
      policeStation: policeStation,
      policeRecordNumber: policeRecordNumber,
      belongingPickupDateStr: belongingPickupDateStr,
      belongingPickupLocation: belongingPickupLocation,
    );
