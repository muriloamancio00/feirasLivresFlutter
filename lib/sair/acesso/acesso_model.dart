import '/components/logo/logo_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'acesso_widget.dart' show AcessoWidget;
import 'package:flutter/material.dart';

class AcessoModel extends FlutterFlowModel<AcessoWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Logo component.
  late LogoModel logoModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    logoModel = createModel(context, () => LogoModel());
  }

  @override
  void dispose() {
    logoModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
