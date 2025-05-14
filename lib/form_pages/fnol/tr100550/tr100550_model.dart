import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/shared_components/end_drawer_content/end_drawer_content_widget.dart';
import '/shared_components/progress_bar/progress_bar_widget.dart';
import '/shared_components/top_bar/top_bar_widget.dart';
import '/index.dart';
import 'tr100550_widget.dart' show Tr100550Widget;
import 'package:flutter/material.dart';

class Tr100550Model extends FlutterFlowModel<Tr100550Widget> {
  ///  Local state fields for this page.

  String q1 = '0';

  DateTime? pageLoadTime;

  bool unknownDateTime = false;

  bool pageError = false;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for endDrawerContent component.
  late EndDrawerContentModel endDrawerContentModel;
  // Model for TopBar component.
  late TopBarModel topBarModel;
  // Model for progressBar component.
  late ProgressBarModel progressBarModel;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;

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
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
