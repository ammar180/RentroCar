import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'new_car_pricing_availability_widget.dart'
    show NewCarPricingAvailabilityWidget;
import 'package:flutter/material.dart';

class NewCarPricingAvailabilityModel
    extends FlutterFlowModel<NewCarPricingAvailabilityWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for car_price widget.
  FocusNode? carPriceFocusNode;
  TextEditingController? carPriceTextController;
  String? Function(BuildContext, String?)? carPriceTextControllerValidator;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    carPriceFocusNode?.dispose();
    carPriceTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController2?.dispose();
  }
}
