import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'little_logo_model.dart';
export 'little_logo_model.dart';

class LittleLogoWidget extends StatefulWidget {
  const LittleLogoWidget({super.key});

  @override
  State<LittleLogoWidget> createState() => _LittleLogoWidgetState();
}

class _LittleLogoWidgetState extends State<LittleLogoWidget> {
  late LittleLogoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LittleLogoModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: Image.network(
        FFAppConstants.smallLogoURL,
        width: 50.0,
        height: 50.0,
        fit: BoxFit.contain,
      ),
    );
  }
}
