import '/flutter_flow/flutter_flow_util.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for searchBarField widget.
  FocusNode? searchBarFieldFocusNode;
  TextEditingController? searchBarFieldTextController;
  String? Function(BuildContext, String?)?
      searchBarFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    searchBarFieldFocusNode?.dispose();
    searchBarFieldTextController?.dispose();
  }
}
