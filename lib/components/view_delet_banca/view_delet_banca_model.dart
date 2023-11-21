import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'view_delet_banca_widget.dart' show ViewDeletBancaWidget;
import 'package:flutter/material.dart';

class ViewDeletBancaModel extends FlutterFlowModel<ViewDeletBancaWidget> {
  ///  Local state fields for this component.

  bool visualizar = false;

  bool alterar = false;

  bool remover = false;

  bool exibir = true;

  ///  State fields for stateful widgets in this component.

  Completer<List<ViewCrudBancaRow>>? requestCompleter;

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
