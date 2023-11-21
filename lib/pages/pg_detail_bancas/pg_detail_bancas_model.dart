import '/flutter_flow/flutter_flow_util.dart';
import 'pg_detail_bancas_widget.dart' show PgDetailBancasWidget;
import 'package:flutter/material.dart';

class PgDetailBancasModel extends FlutterFlowModel<PgDetailBancasWidget> {
  ///  Local state fields for this page.

  int varFeirante = 1;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
