import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'booking_summary_widget.dart' show BookingSummaryWidget;
import 'package:flutter/material.dart';

class BookingSummaryModel extends FlutterFlowModel<BookingSummaryWidget> {
  ///  Local state fields for this page.

  double fullPrice = 0.0;

  CarRecord? carDoc;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Read Document] action in booking_summary widget.
  CarRecord? retrievedBorrowedCar;
  // Stores action output result for [Custom Action - makePayment] action in payBtn widget.
  String? isPayDone;
  // Stores action output result for [Alert Dialog - Custom Dialog] action in payBtn widget.
  bool? checkoutResult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
