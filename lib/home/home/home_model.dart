import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  Local state fields for this page.

  List<CarRecord> searchedCars = [];
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
  List<CarRecord>? carsCollection;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    searchBarFieldFocusNode?.dispose();
    searchBarFieldTextController?.dispose();
  }
}
