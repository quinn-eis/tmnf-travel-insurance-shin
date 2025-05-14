import '/flutter_flow/flutter_flow_util.dart';
import '/shared_components/end_drawer_content/end_drawer_content_widget.dart';
import '/shared_components/progress_bar/progress_bar_widget.dart';
import '/shared_components/top_bar/top_bar_widget.dart';
import '/index.dart';
import 'tr100400_widget.dart' show Tr100400Widget;
import 'package:flutter/material.dart';

class Tr100400Model extends FlutterFlowModel<Tr100400Widget> {
  ///  Local state fields for this page.

  String q1 = '0';

  ///  State fields for stateful widgets in this page.

  // Model for endDrawerContent component.
  late EndDrawerContentModel endDrawerContentModel;
  // Model for TopBar component.
  late TopBarModel topBarModel;
  // Model for progressBar component.
  late ProgressBarModel progressBarModel;

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
}
