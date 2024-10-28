import 'package:rentro_car/utils/theme/theme.dart';
import 'package:flutter/material.dart';

class InputdecorationStyle {
  final String hint;
  Widget? suffixIcon;
  InputdecorationStyle({required this.hint, this.suffixIcon});
  InputDecoration get decorationStyle => InputDecoration(
      isDense: true,
      labelStyle: AppTheme.getLight().bodyLarge.override(
            fontFamily: 'Inter',
            letterSpacing: 0.0,
            fontWeight: FontWeight.w600,
          ),
      hintText: hint,
      hintStyle: AppTheme.getLight().labelMedium.override(
            fontFamily: 'Poppins',
            letterSpacing: 0.0,
          ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0x39131313),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0x00000000),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: AppTheme.getLight().error,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: AppTheme.getLight().error,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      filled: true,
      fillColor: AppTheme.getLight().primaryBackground,
      contentPadding: EdgeInsetsDirectional.fromSTEB(12, 16, 12, 16),
      suffixIcon: suffixIcon);
}
