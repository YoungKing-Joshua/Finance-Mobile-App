import 'dart:ui';
import 'package:joshua_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillErrorContainer => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.errorContainer.withOpacity(0.08),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(getHorizontalSize(5.00)),
        ),
      );
  static ButtonStyle get fillYellow => ElevatedButton.styleFrom(
        backgroundColor: appTheme.yellow800,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(getHorizontalSize(16.00)),
        ),
      );

  // Outline button style
  static ButtonStyle get outlineOnPrimary => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: BorderSide(
          color: theme.colorScheme.onPrimary.withOpacity(0.6),
          width: 1,
        ),
        shape: RoundedRectangleBorder(),
      );
  static ButtonStyle get outlinePrimary1 => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: BorderSide(
          color: theme.colorScheme.primary,
          width: 1,
        ),
        shape: RoundedRectangleBorder(),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
