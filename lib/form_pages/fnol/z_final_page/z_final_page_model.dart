import '/flutter_flow/flutter_flow_util.dart';
import '/shared_components/progress_bar/progress_bar_widget.dart';
import '/shared_components/top_bar/top_bar_widget.dart';
import 'z_final_page_widget.dart' show ZFinalPageWidget;
import 'package:flutter/material.dart';

class ZFinalPageModel extends FlutterFlowModel<ZFinalPageWidget> {
  ///  Local state fields for this page.

  bool unknownCheck = false;

  String? dateStr;

  DateTime? date;

  ///  State fields for stateful widgets in this page.

  // Model for TopBar component.
  late TopBarModel topBarModel;
  // Model for progressBar component.
  late ProgressBarModel progressBarModel;

  @override
  void initState(BuildContext context) {
    topBarModel = createModel(context, () => TopBarModel());
    progressBarModel = createModel(context, () => ProgressBarModel());
  }

  @override
  void dispose() {
    topBarModel.dispose();
    progressBarModel.dispose();
  }
}
