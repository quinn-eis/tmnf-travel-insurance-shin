import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/shared_components/end_drawer_content/end_drawer_content_widget.dart';
import '/shared_components/progress_bar/progress_bar_widget.dart';
import '/shared_components/top_bar/top_bar_widget.dart';
import '/index.dart';
import 'tr100300_widget.dart' show Tr100300Widget;
import 'package:flutter/material.dart';

class Tr100300Model extends FlutterFlowModel<Tr100300Widget> {
  ///  Local state fields for this page.

  String? dobStr;

  DateTime? dob;

  ///  State fields for stateful widgets in this page.

  final formKey3 = GlobalKey<FormState>();
  final formKey8 = GlobalKey<FormState>();
  final formKey7 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  final formKey4 = GlobalKey<FormState>();
  final formKey11 = GlobalKey<FormState>();
  final formKey10 = GlobalKey<FormState>();
  final formKey9 = GlobalKey<FormState>();
  final formKey5 = GlobalKey<FormState>();
  final formKey6 = GlobalKey<FormState>();
  // Model for endDrawerContent component.
  late EndDrawerContentModel endDrawerContentModel;
  // Model for TopBar component.
  late TopBarModel topBarModel;
  // Model for progressBar component.
  late ProgressBarModel progressBarModel;
  // State field(s) for claimantFamKanji widget.
  FocusNode? claimantFamKanjiFocusNode;
  TextEditingController? claimantFamKanjiTextController;
  String? Function(BuildContext, String?)?
      claimantFamKanjiTextControllerValidator;
  // State field(s) for claimantGivKanji widget.
  FocusNode? claimantGivKanjiFocusNode;
  TextEditingController? claimantGivKanjiTextController;
  String? Function(BuildContext, String?)?
      claimantGivKanjiTextControllerValidator;
  // State field(s) for claimantFamKana widget.
  FocusNode? claimantFamKanaFocusNode;
  TextEditingController? claimantFamKanaTextController;
  String? Function(BuildContext, String?)?
      claimantFamKanaTextControllerValidator;
  // State field(s) for claimantGivKana widget.
  FocusNode? claimantGivKanaFocusNode;
  TextEditingController? claimantGivKanaTextController;
  String? Function(BuildContext, String?)?
      claimantGivKanaTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // State field(s) for insdFamKanji widget.
  FocusNode? insdFamKanjiFocusNode;
  TextEditingController? insdFamKanjiTextController;
  String? Function(BuildContext, String?)? insdFamKanjiTextControllerValidator;
  // State field(s) for insdGivKanji widget.
  FocusNode? insdGivKanjiFocusNode;
  TextEditingController? insdGivKanjiTextController;
  String? Function(BuildContext, String?)? insdGivKanjiTextControllerValidator;
  // State field(s) for insdFamKana widget.
  FocusNode? insdFamKanaFocusNode;
  TextEditingController? insdFamKanaTextController;
  String? Function(BuildContext, String?)? insdFamKanaTextControllerValidator;
  // State field(s) for insdGivKana widget.
  FocusNode? insdGivKanaFocusNode;
  TextEditingController? insdGivKanaTextController;
  String? Function(BuildContext, String?)? insdGivKanaTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController9;
  String? Function(BuildContext, String?)? textController9Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController10;
  String? Function(BuildContext, String?)? textController10Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController11;
  String? Function(BuildContext, String?)? textController11Validator;
  // State field(s) for dob widget.
  FocusNode? dobFocusNode;
  TextEditingController? dobTextController;
  String? Function(BuildContext, String?)? dobTextControllerValidator;
  DateTime? datePicked;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController13;
  String? Function(BuildContext, String?)? textController13Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController14;
  String? Function(BuildContext, String?)? textController14Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode6;
  TextEditingController? textController15;
  String? Function(BuildContext, String?)? textController15Validator;

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
    claimantFamKanjiFocusNode?.dispose();
    claimantFamKanjiTextController?.dispose();

    claimantGivKanjiFocusNode?.dispose();
    claimantGivKanjiTextController?.dispose();

    claimantFamKanaFocusNode?.dispose();
    claimantFamKanaTextController?.dispose();

    claimantGivKanaFocusNode?.dispose();
    claimantGivKanaTextController?.dispose();

    insdFamKanjiFocusNode?.dispose();
    insdFamKanjiTextController?.dispose();

    insdGivKanjiFocusNode?.dispose();
    insdGivKanjiTextController?.dispose();

    insdFamKanaFocusNode?.dispose();
    insdFamKanaTextController?.dispose();

    insdGivKanaFocusNode?.dispose();
    insdGivKanaTextController?.dispose();

    textFieldFocusNode1?.dispose();
    textController9?.dispose();

    textFieldFocusNode2?.dispose();
    textController10?.dispose();

    textFieldFocusNode3?.dispose();
    textController11?.dispose();

    dobFocusNode?.dispose();
    dobTextController?.dispose();

    textFieldFocusNode4?.dispose();
    textController13?.dispose();

    textFieldFocusNode5?.dispose();
    textController14?.dispose();

    textFieldFocusNode6?.dispose();
    textController15?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
