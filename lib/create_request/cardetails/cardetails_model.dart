import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/components/alert_dialog_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'cardetails_widget.dart' show CardetailsWidget;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CardetailsModel extends FlutterFlowModel<CardetailsWidget> {
  ///  Local state fields for this page.

  DateTime? _startDate;
  set startDate(DateTime? value) {
    _startDate = value;
    debugLogWidgetClass(this);
  }

  DateTime? get startDate => _startDate;

  DateTime? _endDate;
  set endDate(DateTime? value) {
    _endDate = value;
    debugLogWidgetClass(this);
  }

  DateTime? get endDate => _endDate;

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
  TripRecord? _createdTrip;
  set createdTrip(TripRecord? value) {
    _createdTrip = value;
    debugLogWidgetClass(this);
  }

  TripRecord? get createdTrip => _createdTrip;

  // Stores action output result for [Alert Dialog - Custom Dialog] action in Button widget.
  bool? _dialogResut;
  set dialogResut(bool? value) {
    _dialogResut = value;
    debugLogWidgetClass(this);
  }

  bool? get dialogResut => _dialogResut;

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
          'car': debugSerializeParam(
            widget?.car,
            ParamType.Document,
            link:
                'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=uiBuilder&page=cardetails',
            searchReference:
                'reference=SigKDQoDY2FyEgZ4OGJlb2JyFwgHIAEqEQoPCgNjYXISCDZka2R3ZjBkUAFaA2Nhcg==',
            name: 'car',
            nullable: true,
          )
        }.withoutNulls,
        localStates: {
          'startDate': debugSerializeParam(
            startDate,
            ParamType.DateTime,
            link:
                'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=uiBuilder&page=cardetails',
            searchReference:
                'reference=QhgKEgoJc3RhcnREYXRlEgVjZXdhZnICCAhQAVoJc3RhcnREYXRlYgpjYXJkZXRhaWxz',
            name: 'DateTime',
            nullable: true,
          ),
          'endDate': debugSerializeParam(
            endDate,
            ParamType.DateTime,
            link:
                'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=uiBuilder&page=cardetails',
            searchReference:
                'reference=QhYKEAoHZW5kRGF0ZRIFOGdnMGRyAggIUAFaB2VuZERhdGViCmNhcmRldGFpbHM=',
            name: 'DateTime',
            nullable: true,
          )
        },
        widgetStates: {
          'pageViewCurrentIndex': debugSerializeParam(
            pageViewCurrentIndex,
            ParamType.int,
            link:
                'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=uiBuilder&page=cardetails',
            name: 'int',
            nullable: true,
          )
        },
        actionOutputs: {
          'createdTrip': debugSerializeParam(
            createdTrip,
            ParamType.Document,
            link:
                'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=uiBuilder&page=cardetails',
            name: 'trip',
            nullable: true,
          ),
          'dialogResut': debugSerializeParam(
            dialogResut,
            ParamType.bool,
            link:
                'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=uiBuilder&page=cardetails',
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
            'https://app.flutterflow.io/project/rentro-car-74c8w5/tab=uiBuilder&page=cardetails',
        searchReference: 'reference=OgpjYXJkZXRhaWxzUAFaCmNhcmRldGFpbHM=',
        widgetClassName: 'cardetails',
      );
}
