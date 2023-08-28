import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:joshua_s_application1/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 122,
            right: 122,
          ),
          child: CustomImageView(
            svgPath: ImageConstant.imgBookmark,
            height: getVerticalSize(80),
            width: getHorizontalSize(50),
          ),
        ),
      ),
    );
  }
}
