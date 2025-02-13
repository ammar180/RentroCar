import '/flutter_flow/flutter_flow_util.dart';
import 'adding_new_car_page_widget.dart' show AddingNewCarPageWidget;
import 'package:flutter/material.dart';

class AddingNewCarPageModel extends FlutterFlowModel<AddingNewCarPageWidget> {
  ///  Local state fields for this page.

  List<String> photosList = [];
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
      return 'Make is required';
    }

    if (val.length > 20) {
      return 'Top long name';
    }

    return null;
  }

  // State field(s) for car_model widget.
  FocusNode? carModelFocusNode;
  TextEditingController? carModelTextController;
  String? Function(BuildContext, String?)? carModelTextControllerValidator;
  String? _carModelTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Model is required';
    }

    return null;
  }

  // State field(s) for car_year widget.
  FocusNode? carYearFocusNode;
  TextEditingController? carYearTextController;
  String? Function(BuildContext, String?)? carYearTextControllerValidator;
  String? _carYearTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Year is required';
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
      return 'car price is required';
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  String? _textController6Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Maximum Rent days is required';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    carMakeTextControllerValidator = _carMakeTextControllerValidator;
    carModelTextControllerValidator = _carModelTextControllerValidator;
    carYearTextControllerValidator = _carYearTextControllerValidator;
    carPriceTextControllerValidator = _carPriceTextControllerValidator;
    textController6Validator = _textController6Validator;
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
}
