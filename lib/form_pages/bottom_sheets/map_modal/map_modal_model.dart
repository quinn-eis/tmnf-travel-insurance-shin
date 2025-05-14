import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'map_modal_widget.dart' show MapModalWidget;
import 'package:flutter/material.dart';

class MapModalModel extends FlutterFlowModel<MapModalWidget> {
  ///  Local state fields for this component.

  LatLng? currentLL;

  bool showPredictions = false;

  String? currentSearchText;

  bool inMotion = false;

  String? currentPlaceID;

  List<dynamic> addressComponents = [];
  void addToAddressComponents(dynamic item) => addressComponents.add(item);
  void removeFromAddressComponents(dynamic item) =>
      addressComponents.remove(item);
  void removeAtIndexFromAddressComponents(int index) =>
      addressComponents.removeAt(index);
  void insertAtIndexInAddressComponents(int index, dynamic item) =>
      addressComponents.insert(index, item);
  void updateAddressComponentsAtIndex(int index, Function(dynamic) updateFn) =>
      addressComponents[index] = updateFn(addressComponents[index]);

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (reverseGeocode)] action in mapModal widget.
  ApiCallResponse? initalizeData;
  InstantTimer? checkLocation;
  // Stores action output result for [Backend Call - API (reverseGeocode)] action in mapModal widget.
  ApiCallResponse? reverseGeoTimer;
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  // Stores action output result for [Backend Call - API (reverseGeocode)] action in Button widget.
  ApiCallResponse? reverseGeoTimerButton;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (placesAutocomplete)] action in TextField widget.
  ApiCallResponse? onSubmitAutoComplete;
  // Stores action output result for [Backend Call - API (placesDetails)] action in TextField widget.
  ApiCallResponse? onSubmitPlaceDetailsClick;
  // Stores action output result for [Backend Call - API (reverseGeocode)] action in TextField widget.
  ApiCallResponse? onSubmitReverseGeoClick;
  // Stores action output result for [Backend Call - API (placesDetails)] action in Container widget.
  ApiCallResponse? placeDetailsClick;
  // Stores action output result for [Backend Call - API (reverseGeocode)] action in Container widget.
  ApiCallResponse? reverseGeoClick;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    checkLocation?.cancel();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
