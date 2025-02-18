import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/components/alert_dialog_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'owner_booking_sammary_widget.dart' show OwnerBookingSammaryWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OwnerBookingSammaryModel
    extends FlutterFlowModel<OwnerBookingSammaryWidget> {
  ///  Local state fields for this page.

  CarRecord? _carDoc;
  set carDoc(CarRecord? value) {
    _carDoc = value;
    debugLogWidgetClass(this);
  }

  CarRecord? get carDoc => _carDoc;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Read Document] action in ownerBookingSammary widget.
  CarRecord? _retrievedBorrowedCar;
  set retrievedBorrowedCar(CarRecord? value) {
    _retrievedBorrowedCar = value;
    debugLogWidgetClass(this);
  }

  CarRecord? get retrievedBorrowedCar => _retrievedBorrowedCar;

  // Stores action output result for [Alert Dialog - Custom Dialog] action in Button widget.
  bool? _locationConfirmed;
  set locationConfirmed(bool? value) {
    _locationConfirmed = value;
    debugLogWidgetClass(this);
  }

  bool? get locationConfirmed => _locationConfirmed;

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
                'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=uiBuilder&page=ownerBookingSammary',
            searchReference:
                'reference=SjIKFgoMdHJpcERvY3VtZW50EgZ2c3M5dGdyGAgHIAEqEgoQCgR0cmlwEghtOGRkdm53OFABWgx0cmlwRG9jdW1lbnQ=',
            name: 'trip',
            nullable: true,
          ),
          'bookedCar': debugSerializeParam(
            widget?.bookedCar,
            ParamType.Document,
            link:
                'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=uiBuilder&page=ownerBookingSammary',
            searchReference:
                'reference=Si4KEwoJYm9va2VkQ2FyEgZ3ZnZ2aG9yFwgHIAAqEQoPCgNjYXISCDZka2R3ZjBkUAFaCWJvb2tlZENhcg==',
            name: 'car',
            nullable: true,
          )
        }.withoutNulls,
        localStates: {
          'carDoc': debugSerializeParam(
            carDoc,
            ParamType.Document,
            link:
                'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=uiBuilder&page=ownerBookingSammary',
            searchReference:
                'reference=QigKDwoGY2FyRG9jEgV4dmZ0bnIVCAcqEQoPCgNjYXISCDZka2R3ZjBkUAFaBmNhckRvY2ITb3duZXJCb29raW5nU2FtbWFyeQ==',
            name: 'car',
            nullable: true,
          )
        },
        actionOutputs: {
          'retrievedBorrowedCar': debugSerializeParam(
            retrievedBorrowedCar,
            ParamType.Document,
            link:
                'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=uiBuilder&page=ownerBookingSammary',
            name: 'car',
            nullable: true,
          ),
          'locationConfirmed': debugSerializeParam(
            locationConfirmed,
            ParamType.bool,
            link:
                'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=uiBuilder&page=ownerBookingSammary',
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
            'https://app.flutterflow.io/project/rentro-car-74c8w5/tab=uiBuilder&page=ownerBookingSammary',
        searchReference:
            'reference=OhNvd25lckJvb2tpbmdTYW1tYXJ5UAFaE293bmVyQm9va2luZ1NhbW1hcnk=',
        widgetClassName: 'ownerBookingSammary',
      );
}
