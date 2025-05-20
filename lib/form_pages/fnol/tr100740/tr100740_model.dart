import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/shared_components/end_drawer_content/end_drawer_content_widget.dart';
import '/shared_components/progress_bar/progress_bar_widget.dart';
import '/shared_components/top_bar/top_bar_widget.dart';
import '/index.dart';
import 'tr100740_widget.dart' show Tr100740Widget;
import 'package:flutter/material.dart';

class Tr100740Model extends FlutterFlowModel<Tr100740Widget> {
  ///  Local state fields for this page.

  String q1 = '0';

  DateTime? pageLoadTime;

  bool unknownDateTime = false;

  bool pageError = false;

  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // Model for TopBar component.
  late TopBarModel topBarModel;
  // Model for progressBar component.
  late ProgressBarModel progressBarModel;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Model for endDrawerContent component.
  late EndDrawerContentModel endDrawerContentModel;

  @override
  void initState(BuildContext context) {
    topBarModel = createModel(context, () => TopBarModel());
    progressBarModel = createModel(context, () => ProgressBarModel());
    endDrawerContentModel = createModel(context, () => EndDrawerContentModel());
  }

  @override
  void dispose() {
    topBarModel.dispose();
    progressBarModel.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    endDrawerContentModel.dispose();
  }
}
