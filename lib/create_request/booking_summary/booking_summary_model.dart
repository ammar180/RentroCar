import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/components/alert_dialog_widget.dart';
import '/create_request/checkout_dialog/checkout_dialog_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'booking_summary_widget.dart' show BookingSummaryWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BookingSummaryModel extends FlutterFlowModel<BookingSummaryWidget> {
  ///  Local state fields for this page.

  double _fullPrice = 0.0;
  set fullPrice(double value) {
    _fullPrice = value;
    debugLogWidgetClass(this);
  }

  double get fullPrice => _fullPrice;

  CarRecord? _carDoc;
  set carDoc(CarRecord? value) {
    _carDoc = value;
    debugLogWidgetClass(this);
  }

  CarRecord? get carDoc => _carDoc;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Read Document] action in booking_summary widget.
  CarRecord? retrievedBorrowedCar;
  // Stores action output result for [Custom Action - makePayment] action in payBtn widget.
  String? _isPayDone;
  set isPayDone(String? value) {
    _isPayDone = value;
    debugLogWidgetClass(this);
  }

  String? get isPayDone => _isPayDone;
  // Stores action output result for [Alert Dialog - Custom Dialog] action in payBtn widget.
  bool? checkoutResult;


  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {
    debugLogWidgetClass(this);
  }

  @override
  void dispose() {}

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        widgetParameters: {
          'tripDocument': debugSerializeParam(
            widget?.tripDocument,
            ParamType.Document,
            link:
                'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=uiBuilder&page=booking_summary',
            searchReference:
                'reference=SjIKFgoMdHJpcERvY3VtZW50EgZ2c3M5dGdyGAgHIAEqEgoQCgR0cmlwEghtOGRkdm53OFABWgx0cmlwRG9jdW1lbnQ=',
            name: 'trip',
            nullable: true,
          ),
          'bookedCar': debugSerializeParam(
            widget?.bookedCar,
            ParamType.Document,
            link:
                'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=uiBuilder&page=booking_summary',
            searchReference:
                'reference=Si4KEwoJYm9va2VkQ2FyEgZ3ZnZ2aG9yFwgHIAAqEQoPCgNjYXISCDZka2R3ZjBkUAFaCWJvb2tlZENhcg==',
            name: 'car',
            nullable: true,
          )
        }.withoutNulls,
        localStates: {
          'fullPrice': debugSerializeParam(
            fullPrice,
            ParamType.double,
            link:
                'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=uiBuilder&page=booking_summary',
            searchReference:
                'reference=QhoKEgoJZnVsbFByaWNlEgV2MGNvenIECAIgAVABWglmdWxsUHJpY2ViD2Jvb2tpbmdfc3VtbWFyeQ==',
            name: 'double',
            nullable: false,
          ),
          'carDoc': debugSerializeParam(
            carDoc,
            ParamType.Document,
            link:
                'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=uiBuilder&page=booking_summary',
            searchReference:
                'reference=QigKDwoGY2FyRG9jEgV1dDJtbnIVCAcqEQoPCgNjYXISCDZka2R3ZjBkUAFaBmNhckRvY2IPYm9va2luZ19zdW1tYXJ5',
            name: 'car',
            nullable: true,
          )
        },
        actionOutputs: {
          'retrievedBorrowedCar': debugSerializeParam(
            retrievedBorrowedCar,
            ParamType.Document,
            link:
                'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=uiBuilder&page=booking_summary',
            name: 'car',
            nullable: true,
          ),
          'isPayDone': debugSerializeParam(
            isPayDone,
            ParamType.bool,
            link:
                'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=uiBuilder&page=booking_summary',
            name: 'bool',
            nullable: true,
          )
        },
        generatorVariables: debugGeneratorVariables,
        backendQueries: debugBackendQueries,
        componentStates: {
          ...widgetBuilderComponents.map(
            (key, value) => MapEntry(
              key,
              value.toWidgetClassDebugData(),
            ),
          ),
        }.withoutNulls,
        link:
            'https://app.flutterflow.io/project/rentro-car-74c8w5/tab=uiBuilder&page=booking_summary',
        searchReference:
            'reference=Og9ib29raW5nX3N1bW1hcnlQAVoPYm9va2luZ19zdW1tYXJ5',
        widgetClassName: 'booking_summary',
      );
}
