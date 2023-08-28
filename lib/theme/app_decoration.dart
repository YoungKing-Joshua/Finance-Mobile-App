import 'package:flutter/material.dart';
import 'package:joshua_s_application1/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillCyan => BoxDecoration(
        color: appTheme.cyan20014,
      );
  static BoxDecoration get fillLime => BoxDecoration(
        color: appTheme.lime50,
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.32),
      );

  // Gradient decorations
  static BoxDecoration get gradientErrorContainerToLime => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.44, 0.24),
          end: Alignment(0.53, 1.53),
          colors: [
            theme.colorScheme.errorContainer,
            appTheme.lime900,
          ],
        ),
      );
  static BoxDecoration get gradientOnPrimaryToBlue => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.77, 0.36),
          end: Alignment(0.75, 1.31),
          colors: [
            theme.colorScheme.onPrimary.withOpacity(1),
            theme.colorScheme.primaryContainer,
            appTheme.blue900,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineOnPrimary => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.onPrimary,
            spreadRadius: getHorizontalSize(2),
            blurRadius: getHorizontalSize(2),
            offset: Offset(
              0,
              -2,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimary => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: theme.colorScheme.primary,
            width: getHorizontalSize(1),
          ),
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder14 => BorderRadius.circular(
        getHorizontalSize(14),
      );
  static BorderRadius get circleBorder23 => BorderRadius.circular(
        getHorizontalSize(23),
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
