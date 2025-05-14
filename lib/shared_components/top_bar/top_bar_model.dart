import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/shared_components/big_logo/big_logo_widget.dart';
import '/shared_components/little_logo/little_logo_widget.dart';
import 'top_bar_widget.dart' show TopBarWidget;
import 'package:flutter/material.dart';

class TopBarModel extends FlutterFlowModel<TopBarWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for littleLogo component.
  late LittleLogoModel littleLogoModel;
  // Model for BigLogo component.
  late BigLogoModel bigLogoModel;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {
    littleLogoModel = createModel(context, () => LittleLogoModel());
    bigLogoModel = createModel(context, () => BigLogoModel());
  }

  @override
  void dispose() {
    littleLogoModel.dispose();
    bigLogoModel.dispose();
  }
}
