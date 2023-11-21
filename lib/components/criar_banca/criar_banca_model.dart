import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'criar_banca_widget.dart' show CriarBancaWidget;
import 'package:flutter/material.dart';

class CriarBancaModel extends FlutterFlowModel<CriarBancaWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for txtNome widget.
  FocusNode? txtNomeFocusNode;
  TextEditingController? txtNomeController;
  String? Function(BuildContext, String?)? txtNomeControllerValidator;
  // State field(s) for dpFeirante widget.
  int? dpFeiranteValue;
  FormFieldController<int>? dpFeiranteValueController;
  // State field(s) for dpFeira widget.
  int? dpFeiraValue;
  FormFieldController<int>? dpFeiraValueController;

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
