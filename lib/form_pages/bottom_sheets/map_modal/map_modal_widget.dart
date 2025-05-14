import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/instant_timer.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';
import 'package:provider/provider.dart';
import 'map_modal_model.dart';
export 'map_modal_model.dart';

class MapModalWidget extends StatefulWidget {
  const MapModalWidget({
    super.key,
    this.startingLL,
    this.startingSearchText,
    this.sessionToken,
    this.startingPlaceID,
    bool? locationPermissionAvail,
    this.deviceLocation,
    this.priorPage,
  }) : this.locationPermissionAvail = locationPermissionAvail ?? false;

  final LatLng? startingLL;
  final String? startingSearchText;
  final String? sessionToken;
  final String? startingPlaceID;
  final bool locationPermissionAvail;
  final LatLng? deviceLocation;
  final String? priorPage;

  @override
  State<MapModalWidget> createState() => _MapModalWidgetState();
}

class _MapModalWidgetState extends State<MapModalWidget> {
  late MapModalModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MapModalModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.currentLL = widget.startingLL;
      _model.currentPlaceID = widget.startingPlaceID;
      _model.currentSearchText = widget.startingSearchText;
      if (_model.currentPlaceID == null || _model.currentPlaceID == '') {
        _model.initalizeData = await ReverseGeocodeCall.call(
          latlng: functions.formatLatLng(widget.startingLL!),
        );

        if ((_model.initalizeData?.succeeded ?? true)) {
          _model.currentSearchText = ReverseGeocodeCall.fullAddress(
            (_model.initalizeData?.jsonBody ?? ''),
          )?.firstOrNull?.toString();
          _model.currentPlaceID = ReverseGeocodeCall.placeID(
            (_model.initalizeData?.jsonBody ?? ''),
          )?.firstOrNull?.toString();
          _model.addressComponents = ReverseGeocodeCall.addressComponents(
            (_model.initalizeData?.jsonBody ?? ''),
          )!
              .toList()
              .cast<dynamic>();
          safeSetState(() {});
        }
      }
      safeSetState(() {
        _model.textController?.text = _model.currentSearchText!;
      });
      _model.checkLocation = InstantTimer.periodic(
        duration: Duration(milliseconds: 100),
        callback: (timer) async {
          if (functions.compareLatLng(
                  _model.currentLL, _model.googleMapsCenter)! ||
              _model.inMotion) {
            return;
          }

          _model.currentLL = _model.googleMapsCenter;
          _model.reverseGeoTimer = await ReverseGeocodeCall.call(
            latlng: functions.formatLatLng(_model.currentLL!),
          );

          if ((_model.reverseGeoTimer?.succeeded ?? true)) {
            _model.currentPlaceID = ReverseGeocodeCall.placeID(
              (_model.reverseGeoTimer?.jsonBody ?? ''),
            )?.firstOrNull?.toString();
            _model.addressComponents = ReverseGeocodeCall.addressComponents(
              (_model.reverseGeoTimer?.jsonBody ?? ''),
            )!
                .toList()
                .cast<dynamic>();
            _model.currentSearchText = ReverseGeocodeCall.fullAddress(
              (_model.reverseGeoTimer?.jsonBody ?? ''),
            )?.firstOrNull?.toString();
            safeSetState(() {
              _model.textController?.text = _model.currentSearchText!;
            });
            return;
          } else {
            return;
          }
        },
        startImmediately: false,
      );
    });

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: MediaQuery.sizeOf(context).height * 1.0,
      child: Stack(
        children: [
          Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: FlutterFlowGoogleMap(
              controller: _model.googleMapsController,
              onCameraIdle: (latLng) => _model.googleMapsCenter = latLng,
              initialLocation: _model.googleMapsCenter ??= widget.startingLL!,
              markerColor: GoogleMarkerColor.violet,
              mapType: MapType.normal,
              style: GoogleMapStyle.standard,
              initialZoom: 16.0,
              allowInteraction: true,
              allowZoom: true,
              showZoomControls: false,
              showLocation: false,
              showCompass: false,
              showMapToolbar: false,
              showTraffic: false,
              centerMapOnMarkerTap: false,
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.0, 0.95),
            child: PointerInterceptor(
              intercepting: isWeb,
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.settings_outlined,
                      color: Colors.transparent,
                      size: 50.0,
                    ),
                    Material(
                      color: Colors.transparent,
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 0.6,
                        height: 50.0,
                        constraints: BoxConstraints(
                          maxWidth: 475.0,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(0.0),
                          border: Border.all(
                            color: Colors.transparent,
                            width: 0.0,
                          ),
                        ),
                        child: FFButtonWidget(
                          onPressed: () async {
                            _model.inMotion = true;
                            safeSetState(() {});
                            _model.checkLocation?.cancel();
                            if (!(functions.compareLatLng(_model.currentLL,
                                    _model.googleMapsCenter)! &&
                                (_model.currentPlaceID != null &&
                                    _model.currentPlaceID != '') &&
                                (_model.currentLL != null) &&
                                (_model.addressComponents.length > 0))) {
                              _model.currentLL = _model.googleMapsCenter;
                              _model.reverseGeoTimerButton =
                                  await ReverseGeocodeCall.call(
                                latlng:
                                    functions.formatLatLng(_model.currentLL!),
                              );

                              if ((_model.reverseGeoTimerButton?.succeeded ??
                                  true)) {
                                _model.currentPlaceID =
                                    ReverseGeocodeCall.placeID(
                                  (_model.reverseGeoTimerButton?.jsonBody ??
                                      ''),
                                )?.firstOrNull?.toString();
                                _model.addressComponents =
                                    ReverseGeocodeCall.addressComponents(
                                  (_model.reverseGeoTimerButton?.jsonBody ??
                                      ''),
                                )!
                                        .toList()
                                        .cast<dynamic>();
                                _model.currentSearchText =
                                    ReverseGeocodeCall.fullAddress(
                                  (_model.reverseGeoTimerButton?.jsonBody ??
                                      ''),
                                )?.firstOrNull?.toString();
                                safeSetState(() {
                                  _model.textController?.text =
                                      _model.currentSearchText!;
                                });
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Search error. Please try again.',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).secondary,
                                  ),
                                );
                              }
                            }
                            FFAppState().updateUserAccidentLocationStruct(
                              (e) => e
                                ..placeID = _model.currentPlaceID
                                ..latLng = _model.currentLL
                                ..addressLine1 =
                                    functions.getStreetAddressRoute(
                                        _model.addressComponents.toList())
                                ..city = functions
                                    .getCity(_model.addressComponents.toList())
                                ..state = functions.getShortName(
                                    _model.addressComponents.firstOrNull!,
                                    'administrative_area_level_1')
                                ..postalCode = functions.getPostalCode(
                                    _model.addressComponents.toList())
                                ..fullAddress = _model.currentSearchText
                                ..addressNumberLine1 =
                                    functions.getStreetAddressNumber(
                                        _model.addressComponents.toList())
                                ..googleValidated = true
                                ..county = (String fullCounty) {
                                  return fullCounty
                                      .replaceAll(" County", "")
                                      .replaceAll(" Parish", "");
                                }(functions.getShortName(
                                    _model.addressComponents.firstOrNull!,
                                    'administrative_area_level_2'))
                                ..country = functions.getShortName(
                                    _model.addressComponents.firstOrNull!,
                                    'country'),
                            );
                            Navigator.pop(context, _model.textController.text);

                            safeSetState(() {});
                          },
                          text: FFLocalizations.of(context).getText(
                            'b8ygcmtd' /* Confirm Location */,
                          ),
                          options: FFButtonOptions(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  font: GoogleFonts.roboto(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 0.0,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Builder(
                        builder: (context) {
                          if (widget.locationPermissionAvail == true) {
                            return FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 8.0,
                              borderWidth: 1.0,
                              buttonSize: 50.0,
                              fillColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              icon: Icon(
                                Icons.my_location_rounded,
                                color: FlutterFlowTheme.of(context).accent1,
                                size: 30.0,
                              ),
                              onPressed: () async {
                                await _model.googleMapsController.future.then(
                                  (c) => c.animateCamera(
                                    CameraUpdate.newLatLng(
                                        widget.deviceLocation!.toGoogleMaps()),
                                  ),
                                );
                              },
                            );
                          } else {
                            return Icon(
                              Icons.settings_outlined,
                              color: Colors.transparent,
                              size: 50.0,
                            );
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.0, -1.0),
            child: PointerInterceptor(
              intercepting: isWeb,
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Material(
                        color: Colors.transparent,
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.95,
                          constraints: BoxConstraints(
                            maxHeight: 300.0,
                          ),
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 2.0,
                                color: Color(0x4E000000),
                                offset: Offset(
                                  0.0,
                                  4.0,
                                ),
                              )
                            ],
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              width: 2.0,
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Flexible(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 8.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            4.0, 0.0, 4.0, 0.0),
                                        child: Icon(
                                          Icons.search_rounded,
                                          color: Color(0xFF95A1AC),
                                          size: 24.0,
                                        ),
                                      ),
                                      Expanded(
                                        child: TextFormField(
                                          controller: _model.textController,
                                          focusNode: _model.textFieldFocusNode,
                                          onChanged: (_) =>
                                              EasyDebounce.debounce(
                                            '_model.textController',
                                            Duration(milliseconds: 10),
                                            () async {
                                              _model.showPredictions = true;
                                              _model.currentPlaceID = '';
                                              _model.addressComponents = [];
                                              _model.currentSearchText = null;
                                              safeSetState(() {});
                                            },
                                          ),
                                          onFieldSubmitted: (_) async {
                                            if (_model.textController.text !=
                                                    '') {
                                              _model.onSubmitAutoComplete =
                                                  await PlacesAutocompleteCall
                                                      .call(
                                                input:
                                                    _model.textController.text,
                                                sessiontoken: FFAppState()
                                                    .googleMapsSessionID,
                                              );

                                              if (((_model.onSubmitAutoComplete
                                                              ?.succeeded ??
                                                          true) ==
                                                      true) &&
                                                  (PlacesAutocompleteCall
                                                              .allPredictions(
                                                        (_model.onSubmitAutoComplete
                                                                ?.jsonBody ??
                                                            ''),
                                                      )!
                                                          .length >=
                                                      1)) {
                                                safeSetState(() {
                                                  _model.textController?.text =
                                                      PlacesAutocompleteCall
                                                              .clearText(
                                                    (_model.onSubmitAutoComplete
                                                            ?.jsonBody ??
                                                        ''),
                                                  )!
                                                          .firstOrNull!;
                                                });
                                                _model.currentPlaceID =
                                                    PlacesAutocompleteCall
                                                        .placeID(
                                                  (_model.onSubmitAutoComplete
                                                          ?.jsonBody ??
                                                      ''),
                                                )?.firstOrNull;
                                                _model.inMotion = true;
                                                _model.showPredictions = false;
                                                _model.currentSearchText =
                                                    PlacesAutocompleteCall
                                                        .clearText(
                                                  (_model.onSubmitAutoComplete
                                                          ?.jsonBody ??
                                                      ''),
                                                )?.firstOrNull;
                                                safeSetState(() {});
                                                _model.onSubmitPlaceDetailsClick =
                                                    await PlacesDetailsCall
                                                        .call(
                                                  sessiontoken: FFAppState()
                                                      .googleMapsSessionID,
                                                  placeId:
                                                      PlacesAutocompleteCall
                                                          .placeID(
                                                    (_model.onSubmitAutoComplete
                                                            ?.jsonBody ??
                                                        ''),
                                                  )?.firstOrNull,
                                                );

                                                if ((_model
                                                        .onSubmitPlaceDetailsClick
                                                        ?.succeeded ??
                                                    true)) {
                                                  _model.currentLL =
                                                      functions.generateLatLng(
                                                          PlacesDetailsCall.lat(
                                                            (_model.onSubmitPlaceDetailsClick
                                                                    ?.jsonBody ??
                                                                ''),
                                                          )!
                                                              .toString(),
                                                          PlacesDetailsCall.lng(
                                                            (_model.onSubmitPlaceDetailsClick
                                                                    ?.jsonBody ??
                                                                ''),
                                                          )!
                                                              .toString());
                                                  _model.onSubmitReverseGeoClick =
                                                      await ReverseGeocodeCall
                                                          .call(
                                                    latlng:
                                                        functions.formatLatLng(
                                                            _model.currentLL!),
                                                  );

                                                  if ((_model
                                                          .onSubmitReverseGeoClick
                                                          ?.succeeded ??
                                                      true)) {
                                                    _model.addressComponents =
                                                        ReverseGeocodeCall
                                                                .addressComponents(
                                                      (_model.onSubmitReverseGeoClick
                                                              ?.jsonBody ??
                                                          ''),
                                                    )!
                                                            .toList()
                                                            .cast<dynamic>();
                                                    await _model
                                                        .googleMapsController
                                                        .future
                                                        .then(
                                                      (c) => c.animateCamera(
                                                        CameraUpdate.newLatLng(
                                                            _model.currentLL!
                                                                .toGoogleMaps()),
                                                      ),
                                                    );
                                                    await Future.delayed(
                                                        const Duration(
                                                            milliseconds: 100));
                                                  }
                                                }
                                                _model.inMotion = false;
                                                safeSetState(() {});
                                              }
                                            }

                                            safeSetState(() {});
                                          },
                                          autofocus: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                              'es5ro93y' /* Search here */,
                                            ),
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall
                                                    .override(
                                                      font: GoogleFonts.roboto(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .fontStyle,
                                                      ),
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodySmall
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodySmall
                                                              .fontStyle,
                                                    ),
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                            errorBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                            focusedErrorBorder:
                                                UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                            suffixIcon: _model.textController!
                                                    .text.isNotEmpty
                                                ? InkWell(
                                                    onTap: () async {
                                                      _model.textController
                                                          ?.clear();
                                                      _model.showPredictions =
                                                          true;
                                                      _model.currentPlaceID =
                                                          '';
                                                      _model.addressComponents =
                                                          [];
                                                      _model.currentSearchText =
                                                          null;
                                                      safeSetState(() {});
                                                      safeSetState(() {});
                                                    },
                                                    child: Icon(
                                                      Icons.clear,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .borderColor,
                                                      size: 25.0,
                                                    ),
                                                  )
                                                : null,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.roboto(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                          validator: _model
                                              .textControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              if (_model.showPredictions)
                                Align(
                                  alignment: AlignmentDirectional(0.0, -0.75),
                                  child: FutureBuilder<ApiCallResponse>(
                                    future: PlacesAutocompleteCall.call(
                                      input: _model.textController.text,
                                      sessiontoken:
                                          FFAppState().googleMapsSessionID,
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: LinearProgressIndicator(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                        );
                                      }
                                      final listViewPlacesAutocompleteResponse =
                                          snapshot.data!;

                                      return Builder(
                                        builder: (context) {
                                          final item = (PlacesAutocompleteCall
                                                      .allPredictions(
                                                    listViewPlacesAutocompleteResponse
                                                        .jsonBody,
                                                  )?.toList() ??
                                                  [])
                                              .take(4)
                                              .toList();

                                          return ListView.builder(
                                            padding: EdgeInsets.zero,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            itemCount: item.length,
                                            itemBuilder: (context, itemIndex) {
                                              final itemItem = item[itemIndex];
                                              return InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  safeSetState(() {
                                                    _model.textController
                                                        ?.text = getJsonField(
                                                      itemItem,
                                                      r'''$.description''',
                                                    ).toString();
                                                  });
                                                  _model.currentPlaceID =
                                                      getJsonField(
                                                    itemItem,
                                                    r'''$.place_id''',
                                                  ).toString();
                                                  _model.inMotion = true;
                                                  _model.showPredictions =
                                                      false;
                                                  _model.currentSearchText =
                                                      getJsonField(
                                                    itemItem,
                                                    r'''$.description''',
                                                  ).toString();
                                                  safeSetState(() {});
                                                  _model.placeDetailsClick =
                                                      await PlacesDetailsCall
                                                          .call(
                                                    sessiontoken: FFAppState()
                                                        .googleMapsSessionID,
                                                    placeId: getJsonField(
                                                      itemItem,
                                                      r'''$.place_id''',
                                                    ).toString(),
                                                  );

                                                  if ((_model.placeDetailsClick
                                                          ?.succeeded ??
                                                      true)) {
                                                    _model.currentLL = functions
                                                        .generateLatLng(
                                                            PlacesDetailsCall
                                                                    .lat(
                                                              (_model.placeDetailsClick
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            )!
                                                                .toString(),
                                                            PlacesDetailsCall
                                                                    .lng(
                                                              (_model.placeDetailsClick
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            )!
                                                                .toString());
                                                    _model.reverseGeoClick =
                                                        await ReverseGeocodeCall
                                                            .call(
                                                      latlng: functions
                                                          .formatLatLng(_model
                                                              .currentLL!),
                                                    );

                                                    if ((_model.reverseGeoClick
                                                            ?.succeeded ??
                                                        true)) {
                                                      _model.addressComponents =
                                                          ReverseGeocodeCall
                                                                  .addressComponents(
                                                        (_model.reverseGeoClick
                                                                ?.jsonBody ??
                                                            ''),
                                                      )!
                                                              .toList()
                                                              .cast<dynamic>();
                                                      await _model
                                                          .googleMapsController
                                                          .future
                                                          .then(
                                                        (c) => c.animateCamera(
                                                          CameraUpdate
                                                              .newLatLng(_model
                                                                  .currentLL!
                                                                  .toGoogleMaps()),
                                                        ),
                                                      );
                                                      await Future.delayed(
                                                          const Duration(
                                                              milliseconds:
                                                                  100));
                                                    }
                                                  }
                                                  _model.inMotion = false;
                                                  safeSetState(() {});

                                                  safeSetState(() {});
                                                },
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                      color: Colors.transparent,
                                                      width: 0.0,
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 0.0,
                                                                8.0, 8.0),
                                                    child: AutoSizeText(
                                                      getJsonField(
                                                        itemItem,
                                                        r'''$.description''',
                                                      ).toString(),
                                                      maxLines: 3,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .roboto(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: PointerInterceptor(
              intercepting: isWeb,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.location_pin,
                    color: FlutterFlowTheme.of(context).error,
                    size: 34.0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
