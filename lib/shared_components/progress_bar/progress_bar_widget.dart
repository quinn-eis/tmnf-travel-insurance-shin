import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'progress_bar_model.dart';
export 'progress_bar_model.dart';

class ProgressBarWidget extends StatefulWidget {
  const ProgressBarWidget({
    super.key,
    this.currentSectionName,
    this.currentQuestionName,
  });

  final String? currentSectionName;
  final String? currentQuestionName;

  @override
  State<ProgressBarWidget> createState() => _ProgressBarWidgetState();
}

class _ProgressBarWidgetState extends State<ProgressBarWidget> {
  late ProgressBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProgressBarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return LinearPercentIndicator(
      percent: FFAppState().pageIndex / 56,
      width: MediaQuery.sizeOf(context).width * 1.0,
      lineHeight: 8.0,
      animation: false,
      animateFromLastPercent: true,
      progressColor: Color(0xFF223864),
      backgroundColor: Color(0xFFEFF3F6),
      barRadius: Radius.circular(0.0),
      padding: EdgeInsets.zero,
    );
  }
}
