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
  String window1Title = "welcome 1";
  String window1Image = "https://images.unsplash.com/photo-1509042239860-f550ce710b93?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxfHxjb2ZmZWV8ZW58MHx8fHwxNzA2NjUzOTMwfDA&ixlib=rb-4.0.3&q=80&w=1080";
  String window1SubTitle = "Onboarding 1";
  String window1Desc = "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.";
  
  String window2Title = "welcome 2";
  String window2Image = "https://images.unsplash.com/photo-1512568400610-62da28bc8a13?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw5fHxjb2ZmZWV8ZW58MHx8fHwxNzA2NjUzOTMwfDA&ixlib=rb-4.0.3&q=80&w=1080";
  String window2SubTitle = "Onboarding Title";
  String window2Desc = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ";
  
  String window3Title = "Welcome 3";
  String window3Image = "https://images.unsplash.com/photo-1485808191679-5f86510681a2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxNHx8Y29mZmVlfGVufDB8fHx8MTcwNjY1MzkzMHww&ixlib=rb-4.0.3&q=80&w=1080";
  String window3SubTitle = "onboarding 3";
  String window3Desc = "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.";
  
  String window4Title = "welcome 4";
  String window4Image = "https://images.unsplash.com/photo-1522992319-0365e5f11656?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxMnx8Y29mZmVlfGVufDB8fHx8MTcwNjY1MzkzMHww&ixlib=rb-4.0.3&q=80&w=1080";
  String window4SubTitle = "onboarding 4";
  String window4Desc = "";

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
