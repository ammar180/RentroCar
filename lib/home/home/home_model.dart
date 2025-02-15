import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/home/car_card/car_card_widget.dart';
import '/home/car_card_big/car_card_big_widget.dart';
import 'dart:ui';
import 'home_widget.dart' show HomeWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  Local state fields for this page.

  late LoggableList<CarRecord> _searchedCars = LoggableList([]);
  set searchedCars(List<CarRecord> value) {
    if (value != null) {
      _searchedCars = LoggableList(value);
    }

    debugLogWidgetClass(this);
  }

  List<CarRecord> get searchedCars =>
      _searchedCars?..logger = () => debugLogWidgetClass(this);
  void addToSearchedCars(CarRecord item) => searchedCars.add(item);
  void removeFromSearchedCars(CarRecord item) => searchedCars.remove(item);
  void removeAtIndexFromSearchedCars(int index) => searchedCars.removeAt(index);
  void insertAtIndexInSearchedCars(int index, CarRecord item) =>
      searchedCars.insert(index, item);
  void updateSearchedCarsAtIndex(int index, Function(CarRecord) updateFn) =>
      searchedCars[index] = updateFn(searchedCars[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for searchBarField widget.
  FocusNode? searchBarFieldFocusNode;
  TextEditingController? searchBarFieldTextController;
  String? Function(BuildContext, String?)?
      searchBarFieldTextControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in searchBarField widget.
  List<CarRecord>? _carsCollection;
  set carsCollection(List<CarRecord>? value) {
    _carsCollection = value;
    debugLogWidgetClass(this);
  }

  List<CarRecord>? get carsCollection => _carsCollection;

  // Models for CarCard2.
  Map<String, FlutterFlowModel> carCard2Models = {};
  // Models for CarCardBig dynamic component.
  Map<String, FlutterFlowModel> carCardBigModels = {};

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {
    debugLogWidgetClass(this);
  }

  @override
  void dispose() {
    searchBarFieldFocusNode?.dispose();
    searchBarFieldTextController?.dispose();
  }

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        localStates: {
          'searchedCars': debugSerializeParam(
            searchedCars,
            ParamType.Document,
            isList: true,
            link:
                'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=uiBuilder&page=home',
            searchReference:
                'reference=QjAKFQoMc2VhcmNoZWRDYXJzEgU1dGxiZHIXEgIIByoRCg8KA2NhchIINmRrZHdmMGRQAVoMc2VhcmNoZWRDYXJzYgRob21l',
            name: 'car',
            nullable: false,
          )
        },
        widgetStates: {
          'searchBarFieldText': debugSerializeParam(
            searchBarFieldTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=uiBuilder&page=home',
            name: 'String',
            nullable: true,
          )
        },
        actionOutputs: {
          'carsCollection': debugSerializeParam(
            carsCollection,
            ParamType.Document,
            isList: true,
            link:
                'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=uiBuilder&page=home',
            name: 'car',
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
        dynamicComponentStates: {
          'carCard2Models (List<CarCard2>)': DynamicWidgetClassDebugData(
            componentStates: Map.fromIterables(
              List.generate(carCard2Models.length, (index) => '[$index]'),
              carCard2Models.values.map((e) => e.toWidgetClassDebugData()),
            ),
          ),
          'carCardBigModels (List<CarCardBig>)': DynamicWidgetClassDebugData(
            componentStates: Map.fromIterables(
              List.generate(carCardBigModels.length, (index) => '[$index]'),
              carCardBigModels.values.map((e) => e.toWidgetClassDebugData()),
            ),
          ),
        }.withoutNulls,
        link:
            'https://app.flutterflow.io/project/rentro-car-74c8w5/tab=uiBuilder&page=home',
        searchReference: 'reference=OgRob21lUAFaBGhvbWU=',
        widgetClassName: 'home',
      );
}
