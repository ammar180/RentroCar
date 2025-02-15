import '/flutter_flow/flutter_flow_credit_card_form.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'checkout_dialog_widget.dart' show CheckoutDialogWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CheckoutDialogModel extends FlutterFlowModel<CheckoutDialogWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for CreditCardForm widget.
  final creditCardFormKey = GlobalKey<FormState>();
  CreditCardModel creditCardInfo = emptyCreditCard();

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        widgetParameters: {
          'totalRent': debugSerializeParam(
            widget?.totalRent,
            ParamType.double,
            link:
                'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=uiBuilder&page=checkout_dialog',
            searchReference:
                'reference=ShsKEwoJdG90YWxSZW50EgZoeXAyc25yBAgCIAFQAFoJdG90YWxSZW50',
            name: 'double',
            nullable: true,
          )
        }.withoutNulls,
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
            'https://app.flutterflow.io/project/rentro-car-74c8w5/tab=uiBuilder&page=checkout_dialog',
        searchReference:
            'reference=Og9jaGVja291dF9kaWFsb2dQAFoPY2hlY2tvdXRfZGlhbG9n',
        widgetClassName: 'checkout_dialog',
      );
}
