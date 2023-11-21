import '/flutter_flow/flutter_flow_util.dart';
import 'pg_detail_produtos_widget.dart' show PgDetailProdutosWidget;
import 'package:flutter/material.dart';

class PgDetailProdutosModel extends FlutterFlowModel<PgDetailProdutosWidget> {
  ///  Local state fields for this page.

  int varCat = 1;

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
