import 'package:flutter/material.dart';
import 'flutter_flow/flutter_flow_util.dart';

abstract class FFAppConstants {
  static const double serviceProvantage = 20.0;
  static const double insuranceDeposit = 2500.0;
  static const String appPhoneNumber = '01080056126';
  static Map<String, DebugDataField> toDebugSerializableMap() => {
        'serviceProvantage': debugSerializeParam(
          serviceProvantage,
          ParamType.double,
          link:
              'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=appValues&appValuesTab=constant',
          searchReference:
              'reference=EiEKGwoRc2VydmljZVByb3ZhbnRhZ2USBnNqOTVqMXICCAJaEXNlcnZpY2VQcm92YW50YWdl',
          name: 'double',
          nullable: false,
        ),
        'insuranceDeposit': debugSerializeParam(
          insuranceDeposit,
          ParamType.double,
          link:
              'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=appValues&appValuesTab=constant',
          searchReference:
              'reference=EiAKGgoQaW5zdXJhbmNlRGVwb3NpdBIGN2d2OG5ncgIIAloQaW5zdXJhbmNlRGVwb3NpdA==',
          name: 'double',
          nullable: false,
        ),
        'appPhoneNumber': debugSerializeParam(
          appPhoneNumber,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/rentro-car-74c8w5?tab=appValues&appValuesTab=constant',
          searchReference:
              'reference=Eh4KGAoOYXBwUGhvbmVOdW1iZXISBmZydnVtcnICCANaDmFwcFBob25lTnVtYmVy',
          name: 'String',
          nullable: false,
        )
      };
}
