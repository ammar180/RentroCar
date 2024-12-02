import 'package:rentro_car/features/home/widgets/car_card_big.dart';
import 'package:rentro_car/features/home/widgets/car_card_small.dart';
import 'package:rentro_car/utils/customs/app_model.dart';
import 'home_screen_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends AppModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for searchBarField widget.
  FocusNode? searchBarFieldFocusNode;
  TextEditingController? searchBarFieldTextController;
  String? Function(BuildContext, String?)?
      searchBarFieldTextControllerValidator;
  // Model for CarCard1.
  late CarCardModel carCard1Model;
  // Model for CarCard2.
  late CarCardModel carCard2Model;
  // Model for CarCard3.
  late CarCardModel carCard3Model;
  // Model for CarCardBig component.
  late CarCardBigModel carCardBigModel1;
  // Model for CarCardBig component.
  late CarCardBigModel carCardBigModel2;
  // Model for CarCardBig component.
  late CarCardBigModel carCardBigModel3;

  @override
  void initState(BuildContext context) {
    carCard1Model = createModel(context, () => CarCardModel());
    carCard2Model = createModel(context, () => CarCardModel());
    carCard3Model = createModel(context, () => CarCardModel());
    carCardBigModel1 = createModel(context, () => CarCardBigModel());
    carCardBigModel2 = createModel(context, () => CarCardBigModel());
    carCardBigModel3 = createModel(context, () => CarCardBigModel());
  }

  @override
  void dispose() {
    searchBarFieldFocusNode?.dispose();
    searchBarFieldTextController?.dispose();

    carCard1Model.dispose();
    carCard2Model.dispose();
    carCard3Model.dispose();
    carCardBigModel1.dispose();
    carCardBigModel2.dispose();
    carCardBigModel3.dispose();
  }
}
