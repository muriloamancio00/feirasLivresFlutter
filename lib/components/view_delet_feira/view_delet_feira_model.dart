import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'view_delet_feira_widget.dart' show ViewDeletFeiraWidget;
import 'package:flutter/material.dart';

class ViewDeletFeiraModel extends FlutterFlowModel<ViewDeletFeiraWidget> {
  ///  Local state fields for this component.

  bool visualizar = false;

  bool alterar = false;

  bool remover = false;

  bool exibir = true;

  Color? delet = const Color(0xCC807F7F);

  ///  State fields for stateful widgets in this component.

  Completer<List<FeirasRow>>? requestCompleter;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
