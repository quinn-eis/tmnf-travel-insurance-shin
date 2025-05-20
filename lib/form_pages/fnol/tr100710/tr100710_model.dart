import '/flutter_flow/flutter_flow_util.dart';
import '/shared_components/end_drawer_content/end_drawer_content_widget.dart';
import '/shared_components/progress_bar/progress_bar_widget.dart';
import '/shared_components/top_bar/top_bar_widget.dart';
import '/index.dart';
import 'tr100710_widget.dart' show Tr100710Widget;
import 'package:flutter/material.dart';

class Tr100710Model extends FlutterFlowModel<Tr100710Widget> {
  ///  Local state fields for this page.

  String q1 = '0';

  DateTime? pageLoadTime;

  bool unknownDateTime = false;

  bool pageError = false;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for TopBar component.
  late TopBarModel topBarModel;
  // Model for progressBar component.
  late ProgressBarModel progressBarModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
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
    textFieldFocusNode?.dispose();
    textController?.dispose();

    endDrawerContentModel.dispose();
  }
}
