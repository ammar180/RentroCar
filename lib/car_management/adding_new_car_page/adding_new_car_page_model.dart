import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:math';
import 'dart:ui';
import 'adding_new_car_page_widget.dart' show AddingNewCarPageWidget;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddingNewCarPageModel extends FlutterFlowModel<AddingNewCarPageWidget> {
  ///  Local state fields for this page.

  late LoggableList<String> _photosList = LoggableList([]);
  set photosList(List<String> value) {
    if (value != null) {
      _photosList = LoggableList(value);
    }

    debugLogWidgetClass(this);
  }

  List<String> get photosList =>
      _photosList?..logger = () => debugLogWidgetClass(this);
  void addToPhotosList(String item) => photosList.add(item);
  void removeFromPhotosList(String item) => photosList.remove(item);
  void removeAtIndexFromPhotosList(int index) => photosList.removeAt(index);
  void insertAtIndexInPhotosList(int index, String item) =>
      photosList.insert(index, item);
  void updatePhotosListAtIndex(int index, Function(String) updateFn) =>
      photosList[index] = updateFn(photosList[index]);

  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  // State field(s) for AddingNewCarSteps widget.
  PageController? addingNewCarStepsController;

  int get addingNewCarStepsCurrentIndex =>
      addingNewCarStepsController != null &&
              addingNewCarStepsController!.hasClients &&
              addingNewCarStepsController!.page != null
          ? addingNewCarStepsController!.page!.round()
          : 0;
  // State field(s) for car_make widget.
  FocusNode? carMakeFocusNode;
  TextEditingController? carMakeTextController;
  String? Function(BuildContext, String?)? carMakeTextControllerValidator;
  String? _carMakeTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '5kmswqqi' /* Make is required */,
      );
    }

    if (val.length > 20) {
      return FFLocalizations.of(context).getText(
        'jw96cj79' /* Top long name */,
      );
    }

    return null;
  }

  // State field(s) for car_model widget.
  FocusNode? carModelFocusNode;
  TextEditingController? carModelTextController;
  String? Function(BuildContext, String?)? carModelTextControllerValidator;
  String? _carModelTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '8fpfq0ql' /* Model is required */,
      );
    }

    return null;
  }

  // State field(s) for car_year widget.
  FocusNode? carYearFocusNode;
  TextEditingController? carYearTextController;
  String? Function(BuildContext, String?)? carYearTextControllerValidator;
  String? _carYearTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'aadz9oyu' /* Year is required */,
      );
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  bool isDataUploading3 = false;
  FFUploadedFile uploadedLocalFile3 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl3 = '';

  bool isDataUploading4 = false;
  FFUploadedFile uploadedLocalFile4 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl4 = '';

  bool isDataUploading5 = false;
  FFUploadedFile uploadedLocalFile5 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl5 = '';

  bool isDataUploading6 = false;
  FFUploadedFile uploadedLocalFile6 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl6 = '';

  // State field(s) for car_price widget.
  FocusNode? carPriceFocusNode;
  TextEditingController? carPriceTextController;
  String? Function(BuildContext, String?)? carPriceTextControllerValidator;
  String? _carPriceTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'foervws1' /* car price is required */,
      );
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  String? _textController6Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'cc5wskvk' /* Maximum Rent days is required */,
      );
    }

    return null;
  }

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {
    carMakeTextControllerValidator = _carMakeTextControllerValidator;
    carModelTextControllerValidator = _carModelTextControllerValidator;
    carYearTextControllerValidator = _carYearTextControllerValidator;
    carPriceTextControllerValidator = _carPriceTextControllerValidator;
    textController6Validator = _textController6Validator;

    debugLogWidgetClass(this);
  }

  @override
  void dispose() {
    carMakeFocusNode?.dispose();
    carMakeTextController?.dispose();

    carModelFocusNode?.dispose();
    carModelTextController?.dispose();

    carYearFocusNode?.dispose();
    carYearTextController?.dispose();

    textFieldFocusNode1?.dispose();
    textController4?.dispose();

    carPriceFocusNode?.dispose();
    carPriceTextController?.dispose();

    textFieldFocusNode2?.dispose();
    textController6?.dispose();
  }

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        localStates: {
          'photosList': debugSerializeParam(
            photosList,
            ParamType.String,
            isList: true,
            link:
                'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=uiBuilder&page=AddingNewCarPage',
            searchReference:
                'reference=Qh0KEwoKcGhvdG9zTGlzdBIFZjB2dXRyBhICCAQgAVABWgpwaG90b3NMaXN0YhBBZGRpbmdOZXdDYXJQYWdl',
            name: 'String',
            nullable: false,
          )
        },
        widgetStates: {
          'addingNewCarStepsCurrentIndex': debugSerializeParam(
            addingNewCarStepsCurrentIndex,
            ParamType.int,
            link:
                'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=uiBuilder&page=AddingNewCarPage',
            name: 'int',
            nullable: true,
          ),
          'carMakeText': debugSerializeParam(
            carMakeTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=uiBuilder&page=AddingNewCarPage',
            name: 'String',
            nullable: true,
          ),
          'carModelText': debugSerializeParam(
            carModelTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=uiBuilder&page=AddingNewCarPage',
            name: 'String',
            nullable: true,
          ),
          'carYearText': debugSerializeParam(
            carYearTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=uiBuilder&page=AddingNewCarPage',
            name: 'String',
            nullable: true,
          ),
          'textFieldText1': debugSerializeParam(
            textController4?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=uiBuilder&page=AddingNewCarPage',
            name: 'String',
            nullable: true,
          ),
          'carPriceText': debugSerializeParam(
            carPriceTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=uiBuilder&page=AddingNewCarPage',
            name: 'String',
            nullable: true,
          ),
          'textFieldText2': debugSerializeParam(
            textController6?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=uiBuilder&page=AddingNewCarPage',
            name: 'String',
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
            'https://app.flutterflow.io/project/rentro-car-74c8w5/tab=uiBuilder&page=AddingNewCarPage',
        searchReference:
            'reference=OhBBZGRpbmdOZXdDYXJQYWdlUAFaEEFkZGluZ05ld0NhclBhZ2U=',
        widgetClassName: 'AddingNewCarPage',
      );
}
