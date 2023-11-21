import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'criar_produto_widget.dart' show CriarProdutoWidget;
import 'package:flutter/material.dart';

class CriarProdutoModel extends FlutterFlowModel<CriarProdutoWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for dpCategoria widget.
  int? dpCategoriaValue;
  FormFieldController<int>? dpCategoriaValueController;
  // State field(s) for txtNome widget.
  FocusNode? txtNomeFocusNode;
  TextEditingController? txtNomeController;
  String? Function(BuildContext, String?)? txtNomeControllerValidator;
  // State field(s) for txtPreco widget.
  FocusNode? txtPrecoFocusNode;
  TextEditingController? txtPrecoController;
  String? Function(BuildContext, String?)? txtPrecoControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtNomeFocusNode?.dispose();
    txtNomeController?.dispose();

    txtPrecoFocusNode?.dispose();
    txtPrecoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
