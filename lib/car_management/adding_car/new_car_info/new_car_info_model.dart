import '/flutter_flow/flutter_flow_util.dart';
import 'new_car_info_widget.dart' show NewCarInfoWidget;
import 'package:flutter/material.dart';

class NewCarInfoModel extends FlutterFlowModel<NewCarInfoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for car_make widget.
  FocusNode? carMakeFocusNode;
  TextEditingController? carMakeTextController;
  String? Function(BuildContext, String?)? carMakeTextControllerValidator;
  // State field(s) for car_model widget.
  FocusNode? carModelFocusNode;
  TextEditingController? carModelTextController;
  String? Function(BuildContext, String?)? carModelTextControllerValidator;
  // State field(s) for car_year widget.
  FocusNode? carYearFocusNode;
  TextEditingController? carYearTextController;
  String? Function(BuildContext, String?)? carYearTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    carMakeFocusNode?.dispose();
    carMakeTextController?.dispose();

    carModelFocusNode?.dispose();
    carModelTextController?.dispose();

    carYearFocusNode?.dispose();
    carYearTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController4?.dispose();
  }
}
