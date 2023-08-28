import 'package:flutter/material.dart';
import 'package:joshua_s_application1/core/app_export.dart';
import 'package:joshua_s_application1/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class AppbarButton extends StatelessWidget {
  AppbarButton({
    Key? key,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomOutlinedButton(
          height: getVerticalSize(65),
          width: double.maxFinite,
          text: "lbl_good_morning".tr,
          buttonStyle: CustomButtonStyles.outlineOnPrimary,
          buttonTextStyle: theme.textTheme.titleLarge!,
        ),
      ),
    );
  }
}
