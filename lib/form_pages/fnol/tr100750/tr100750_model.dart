import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/shared_components/end_drawer_content/end_drawer_content_widget.dart';
import '/shared_components/progress_bar/progress_bar_widget.dart';
import '/shared_components/top_bar/top_bar_widget.dart';
import '/index.dart';
import 'tr100750_widget.dart' show Tr100750Widget;
import 'package:flutter/material.dart';

class Tr100750Model extends FlutterFlowModel<Tr100750Widget> {
  ///  Local state fields for this page.

  bool unknownDateTime = false;

  String? pickupDateStr;

  DateTime? pickupDate;

  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // Model for endDrawerContent component.
  late EndDrawerContentModel endDrawerContentModel;
  // Model for TopBar component.
  late TopBarModel topBarModel;
  // Model for progressBar component.
  late ProgressBarModel progressBarModel;
  // State field(s) for datePicker widget.
  FocusNode? datePickerFocusNode;
  TextEditingController? datePickerTextController;
  String? Function(BuildContext, String?)? datePickerTextControllerValidator;
  DateTime? datePicked;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Stores action output result for [Backend Call - API (tmnfTravelDemo)] action in Button widget.
  ApiCallResponse? directusCreate;

  @override
  void initState(BuildContext context) {
    endDrawerContentModel = createModel(context, () => EndDrawerContentModel());
    topBarModel = createModel(context, () => TopBarModel());
    progressBarModel = createModel(context, () => ProgressBarModel());
  }

  @override
  void dispose() {
    endDrawerContentModel.dispose();
    topBarModel.dispose();
    progressBarModel.dispose();
    datePickerFocusNode?.dispose();
    datePickerTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController2?.dispose();
  }
}
