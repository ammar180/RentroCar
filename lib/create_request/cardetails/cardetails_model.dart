import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cardetails_widget.dart' show CardetailsWidget;
import 'package:flutter/material.dart';

class CardetailsModel extends FlutterFlowModel<CardetailsWidget> {
  ///  Local state fields for this page.

  DateTime? startDate;

  DateTime? endDate;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  TripRecord? createdTrip;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
