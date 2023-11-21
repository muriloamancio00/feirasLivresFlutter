import '/flutter_flow/flutter_flow_util.dart';
import 'pg_detail_feiras_widget.dart' show PgDetailFeirasWidget;
import 'package:flutter/material.dart';

class PgDetailFeirasModel extends FlutterFlowModel<PgDetailFeirasWidget> {
  ///  Local state fields for this page.

  int varFeira = 1;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  Color? colorPicked;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
