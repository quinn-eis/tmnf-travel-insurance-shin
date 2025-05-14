import '/components/error_display_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_party_widget.dart' show AddPartyWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AddPartyModel extends FlutterFlowModel<AddPartyWidget> {
  ///  Local state fields for this component.

  bool displayErrorModal = false;

  List<String> errorListModal = [];
  void addToErrorListModal(String item) => errorListModal.add(item);
  void removeFromErrorListModal(String item) => errorListModal.remove(item);
  void removeAtIndexFromErrorListModal(int index) =>
      errorListModal.removeAt(index);
  void insertAtIndexInErrorListModal(int index, String item) =>
      errorListModal.insert(index, item);
  void updateErrorListModalAtIndex(int index, Function(String) updateFn) =>
      errorListModal[index] = updateFn(errorListModal[index]);

  bool personContact = true;

  ///  State fields for stateful widgets in this component.

  final formKey6 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey4 = GlobalKey<FormState>();
  final formKey5 = GlobalKey<FormState>();
  final formKey7 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for Switch widget.
  bool? switchValue;
  // State field(s) for firstNameQuestion widget.
  FocusNode? firstNameQuestionFocusNode;
  TextEditingController? firstNameQuestionTextController;
  String? Function(BuildContext, String?)?
      firstNameQuestionTextControllerValidator;
  String? _firstNameQuestionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        't3mg0gmb' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for lastNameQuestion widget.
  FocusNode? lastNameQuestionFocusNode;
  TextEditingController? lastNameQuestionTextController;
  String? Function(BuildContext, String?)?
      lastNameQuestionTextControllerValidator;
  String? _lastNameQuestionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'e4zajvqg' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for businessNameQuestion widget.
  FocusNode? businessNameQuestionFocusNode;
  TextEditingController? businessNameQuestionTextController;
  String? Function(BuildContext, String?)?
      businessNameQuestionTextControllerValidator;
  String? _businessNameQuestionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'm7c2lo0j' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for phoneQuestion widget.
  FocusNode? phoneQuestionFocusNode;
  TextEditingController? phoneQuestionTextController;
  final phoneQuestionMask = MaskTextInputFormatter(mask: '(###) ###-####');
  String? Function(BuildContext, String?)? phoneQuestionTextControllerValidator;
  // State field(s) for phoneTypeQuestion widget.
  String? phoneTypeQuestionValue;
  FormFieldController<String>? phoneTypeQuestionValueController;
  // State field(s) for emailQuestion widget.
  FocusNode? emailQuestionFocusNode;
  TextEditingController? emailQuestionTextController;
  String? Function(BuildContext, String?)? emailQuestionTextControllerValidator;
  // State field(s) for addresLine widget.
  FocusNode? addresLineFocusNode;
  TextEditingController? addresLineTextController;
  String? Function(BuildContext, String?)? addresLineTextControllerValidator;
  String? _addresLineTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'z5d8us0v' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for city widget.
  FocusNode? cityFocusNode;
  TextEditingController? cityTextController;
  String? Function(BuildContext, String?)? cityTextControllerValidator;
  String? _cityTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'iaowa5ui' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for State widget.
  String? stateValue;
  FormFieldController<String>? stateValueController;
  // State field(s) for Zip widget.
  FocusNode? zipFocusNode;
  TextEditingController? zipTextController;
  final zipMask = MaskTextInputFormatter(mask: '#####');
  String? Function(BuildContext, String?)? zipTextControllerValidator;
  String? _zipTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '8ymn6t7a' /* Field is required */,
      );
    }

    if (!RegExp('^\\d{5}(-\\d{4})?\$').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'wdyem62w' /* Format error */,
      );
    }
    return null;
  }

  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // Model for errorDisplay component.
  late ErrorDisplayModel errorDisplayModel;

  @override
  void initState(BuildContext context) {
    firstNameQuestionTextControllerValidator =
        _firstNameQuestionTextControllerValidator;
    lastNameQuestionTextControllerValidator =
        _lastNameQuestionTextControllerValidator;
    businessNameQuestionTextControllerValidator =
        _businessNameQuestionTextControllerValidator;
    addresLineTextControllerValidator = _addresLineTextControllerValidator;
    cityTextControllerValidator = _cityTextControllerValidator;
    zipTextControllerValidator = _zipTextControllerValidator;
    errorDisplayModel = createModel(context, () => ErrorDisplayModel());
  }

  @override
  void dispose() {
    firstNameQuestionFocusNode?.dispose();
    firstNameQuestionTextController?.dispose();

    lastNameQuestionFocusNode?.dispose();
    lastNameQuestionTextController?.dispose();

    businessNameQuestionFocusNode?.dispose();
    businessNameQuestionTextController?.dispose();

    phoneQuestionFocusNode?.dispose();
    phoneQuestionTextController?.dispose();

    emailQuestionFocusNode?.dispose();
    emailQuestionTextController?.dispose();

    addresLineFocusNode?.dispose();
    addresLineTextController?.dispose();

    cityFocusNode?.dispose();
    cityTextController?.dispose();

    zipFocusNode?.dispose();
    zipTextController?.dispose();

    errorDisplayModel.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
