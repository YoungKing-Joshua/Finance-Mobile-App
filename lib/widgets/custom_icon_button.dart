import 'package:flutter/material.dart';
import 'package:joshua_s_application1/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.margin,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final EdgeInsetsGeometry? margin;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => Padding(
        padding: margin ?? EdgeInsets.zero,
        child: SizedBox(
          height: height ?? 0,
          width: width ?? 0,
          child: IconButton(
            padding: EdgeInsets.zero,
            icon: Container(
              padding: padding ?? EdgeInsets.zero,
              decoration: decoration ??
                  BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(getHorizontalSize(16.00)),
                    gradient: LinearGradient(
                      begin: Alignment(1.0, 1),
                      end: Alignment(0.0, 0),
                      colors: [
                        theme.colorScheme.onPrimary.withOpacity(1),
                        appTheme.blue800,
                      ],
                    ),
                  ),
              child: child,
            ),
            onPressed: onTap,
          ),
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get gradientErrorContainerToLime => BoxDecoration(
        borderRadius: BorderRadius.circular(getHorizontalSize(16.00)),
        gradient: LinearGradient(
          begin: Alignment(0.08, 0),
          end: Alignment(1.01, 1),
          colors: [
            theme.colorScheme.errorContainer,
            appTheme.lime900,
          ],
        ),
      );
  static BoxDecoration get gradientErrorContainerToLimeTL16 => BoxDecoration(
        borderRadius: BorderRadius.circular(getHorizontalSize(16.00)),
        gradient: LinearGradient(
          begin: Alignment(0.08, 0),
          end: Alignment(1.01, 1),
          colors: [
            theme.colorScheme.errorContainer,
            appTheme.lime900,
          ],
        ),
      );
}
