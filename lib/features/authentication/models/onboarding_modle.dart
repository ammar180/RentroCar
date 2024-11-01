import 'package:flutter/material.dart';
import 'package:rentro_car/features/authentication/screens/onboarding_page_widget.dart';
import 'package:rentro_car/utils/customs/app_model.dart';

class OnboardingModel extends AppModel<OnboardingWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
