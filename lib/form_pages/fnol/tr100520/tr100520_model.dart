import '/flutter_flow/flutter_flow_util.dart';
import '/shared_components/end_drawer_content/end_drawer_content_widget.dart';
import '/shared_components/progress_bar/progress_bar_widget.dart';
import '/shared_components/top_bar/top_bar_widget.dart';
import '/index.dart';
import 'tr100520_widget.dart' show Tr100520Widget;
import 'package:flutter/material.dart';

class Tr100520Model extends FlutterFlowModel<Tr100520Widget> {
  ///  Local state fields for this page.

  bool unknownOnsetDate = false;

  bool pageError = false;

  bool? unknownFirstVisit = false;

  bool? unknownFirstJapanVisit = false;

  DateTime? onsetDate;

  String? onsetDateStr;

  DateTime? firstVisitDate;

  String? firstVisitDateStr;

  DateTime? firstJapanVisitDate;

  String? firstJapanVisitDateStr;

  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // Model for endDrawerContent component.
  late EndDrawerContentModel endDrawerContentModel;
  // Model for TopBar component.
  late TopBarModel topBarModel;
  // Model for progressBar component.
  late ProgressBarModel progressBarModel;
  // State field(s) for onset widget.
  FocusNode? onsetFocusNode;
  TextEditingController? onsetTextController;
  String? Function(BuildContext, String?)? onsetTextControllerValidator;
  DateTime? datePicked1;
  // State field(s) for firstVisit widget.
  FocusNode? firstVisitFocusNode;
  TextEditingController? firstVisitTextController;
  String? Function(BuildContext, String?)? firstVisitTextControllerValidator;
  DateTime? datePicked2;
  // State field(s) for firstJapanVisit widget.
  FocusNode? firstJapanVisitFocusNode;
  TextEditingController? firstJapanVisitTextController;
  String? Function(BuildContext, String?)?
      firstJapanVisitTextControllerValidator;
  DateTime? datePicked3;

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
    onsetFocusNode?.dispose();
    onsetTextController?.dispose();

    firstVisitFocusNode?.dispose();
    firstVisitTextController?.dispose();

    firstJapanVisitFocusNode?.dispose();
    firstJapanVisitTextController?.dispose();
  }
}
