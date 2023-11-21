import '/flutter_flow/flutter_flow_util.dart';
import 'criar_categoria_widget.dart' show CriarCategoriaWidget;
import 'package:flutter/material.dart';

class CriarCategoriaModel extends FlutterFlowModel<CriarCategoriaWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for txtNome widget.
  FocusNode? txtNomeFocusNode;
  TextEditingController? txtNomeController;
  String? Function(BuildContext, String?)? txtNomeControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtNomeFocusNode?.dispose();
    txtNomeController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
