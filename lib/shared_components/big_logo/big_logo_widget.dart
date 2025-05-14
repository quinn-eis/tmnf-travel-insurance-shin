import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'big_logo_model.dart';
export 'big_logo_model.dart';

class BigLogoWidget extends StatefulWidget {
  const BigLogoWidget({super.key});

  @override
  State<BigLogoWidget> createState() => _BigLogoWidgetState();
}

class _BigLogoWidgetState extends State<BigLogoWidget> {
  late BigLogoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BigLogoModel());

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
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
      child: Image.network(
        FFAppConstants.bigLogoURL,
        width: 300.0,
        height: 100.0,
        fit: BoxFit.contain,
      ),
    );
  }
}
