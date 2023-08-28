import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyMediumGray900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray900,
      );
  static get bodyMediumOnPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get bodyMediumOnPrimary_1 => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.64),
      );
  static get bodySmall12 => theme.textTheme.bodySmall!.copyWith(
        fontSize: getFontSize(
          12,
        ),
      );
  static get bodySmallGray100 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray100,
        fontSize: getFontSize(
          12,
        ),
      );
  static get bodySmallOnPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: getFontSize(
          11,
        ),
      );
  static get bodySmallOnPrimary12 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: getFontSize(
          12,
        ),
      );
  static get bodySmallOnSecondaryContainer =>
      theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
        fontSize: getFontSize(
          12,
        ),
      );
  static get bodySmallYellow800 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.yellow800,
        fontSize: getFontSize(
          11,
        ),
      );
  // Label text style
  static get labelLargeOnPrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get labelLargeOnSecondaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
      );
  static get labelLargeOnSecondaryContainerBold =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get labelLargeRobotoOnPrimaryContainer =>
      theme.textTheme.labelLarge!.roboto.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get labelMediumOnPrimary => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(0.64),
      );
  static get labelMediumOnPrimaryBold => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: getFontSize(
          11,
        ),
        fontWeight: FontWeight.w700,
      );
  static get labelMediumYellow800 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.yellow800,
        fontSize: getFontSize(
          11,
        ),
        fontWeight: FontWeight.w700,
      );
  static get labelSmallErrorContainer => theme.textTheme.labelSmall!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  // Title text style
  static get titleMediumGray900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray900,
        fontSize: getFontSize(
          18,
        ),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallOnPrimaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get titleSmallOnSecondaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
}

extension on TextStyle {
  TextStyle get openSans {
    return copyWith(
      fontFamily: 'Open Sans',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }
}
