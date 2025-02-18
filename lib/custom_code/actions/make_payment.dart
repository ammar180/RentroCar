// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:dio/dio.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

abstract class PaymentManager {
  static Future<void> initializePaymentSheet(String clientSecret) async {
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        paymentIntentClientSecret: clientSecret,
        merchantDisplayName: "RentroCar",
      ),
    );
  }

  static Future<String> getClientSecret(
      String amount, String currency, String secretKey) async {
    Dio dio = Dio();
    var response = await dio.post(
      'https://api.stripe.com/v1/payment_intents',
      options: Options(
        headers: {
          'Authorization': 'Bearer ${secretKey}',
          'Content-Type': 'application/x-www-form-urlencoded'
        },
      ),
      data: {
        'amount': amount,
        'currency': currency,
      },
    );
    return response.data["client_secret"];
  }
}

Future<String> makePayment(double amount, String currency,
    String pusblishableKey, String secretKey) async {
  Stripe.publishableKey = pusblishableKey;
  try {
    String clientSecret = await PaymentManager.getClientSecret(
        (amount * 100).toInt().toString(), currency, secretKey);
    await PaymentManager.initializePaymentSheet(clientSecret);
    await Stripe.instance.presentPaymentSheet();
    return "PayDone";
  } catch (error) {
    // Instead of casting, log the error type and message
    if (error is DioException) {
      print("Dio error: ${error.message}");
      return "Payment failed: ${error.message}";
    } else {
      print("General error: $error");
      return "Payment failed due to an unexpected error.";
    }
  }
}
