import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/shared_components/progress_bar/progress_bar_widget.dart';
import '/shared_components/top_bar/top_bar_widget.dart';
import '/index.dart';
import 'tr100210_widget.dart' show Tr100210Widget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class Tr100210Model extends FlutterFlowModel<Tr100210Widget> {
  ///  Local state fields for this page.

  String? startDateStr;

  String? endDateStr;

  DateTime? startDate;

  DateTime? endDate;

  ///  State fields for stateful widgets in this page.

  final formKey4 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  // Model for TopBar component.
  late TopBarModel topBarModel;
  // Model for progressBar component.
  late ProgressBarModel progressBarModel;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  late bool passwordVisibility1;
  final textFieldMask1 = MaskTextInputFormatter(mask: '####');
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  late bool passwordVisibility2;
  final textFieldMask2 = MaskTextInputFormatter(mask: '##');
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  late bool passwordVisibility3;
  final textFieldMask3 = MaskTextInputFormatter(mask: '####');
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for departDate widget.
  FocusNode? departDateFocusNode;
  TextEditingController? departDateTextController;
  String? Function(BuildContext, String?)? departDateTextControllerValidator;
  DateTime? datePicked1;
  // State field(s) for arrivalDate widget.
  FocusNode? arrivalDateFocusNode;
  TextEditingController? arrivalDateTextController;
  String? Function(BuildContext, String?)? arrivalDateTextControllerValidator;
  DateTime? datePicked2;

  @override
  void initState(BuildContext context) {
    topBarModel = createModel(context, () => TopBarModel());
    progressBarModel = createModel(context, () => ProgressBarModel());
    passwordVisibility1 = false;
    passwordVisibility2 = false;
    passwordVisibility3 = false;
  }

  @override
  void dispose() {
    topBarModel.dispose();
    progressBarModel.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    departDateFocusNode?.dispose();
    departDateTextController?.dispose();

    arrivalDateFocusNode?.dispose();
    arrivalDateTextController?.dispose();
  }
}
