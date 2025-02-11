import '/car_management/componants/my_car_card/my_car_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'my_cars_widget.dart' show MyCarsWidget;
import 'package:flutter/material.dart';

class MyCarsModel extends FlutterFlowModel<MyCarsWidget> {
  ///  State fields for stateful widgets in this page.

  // Models for MyCarCard dynamic component.
  late FlutterFlowDynamicModels<MyCarCardModel> myCarCardModels;

  @override
  void initState(BuildContext context) {
    myCarCardModels = FlutterFlowDynamicModels(() => MyCarCardModel());
  }

  @override
  void dispose() {
    myCarCardModels.dispose();
  }
}
