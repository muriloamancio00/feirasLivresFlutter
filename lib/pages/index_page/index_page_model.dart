import '/flutter_flow/flutter_flow_util.dart';
import 'index_page_widget.dart' show IndexPageWidget;
import 'package:flutter/material.dart';

class IndexPageModel extends FlutterFlowModel<IndexPageWidget> {
  ///  Local state fields for this page.

  int? totalFeiras = 0;

  int? totalBancas = 0;

  int? totalProduto = 0;

  int? totalCategoria = 0;

  int? totalFeirante = 0;

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
