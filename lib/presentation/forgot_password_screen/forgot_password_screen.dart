import 'controller/forgot_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:joshua_s_application1/core/app_export.dart';
import 'package:joshua_s_application1/core/utils/validation_functions.dart';
import 'package:joshua_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:joshua_s_application1/widgets/app_bar/appbar_image_1.dart';
import 'package:joshua_s_application1/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:joshua_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:joshua_s_application1/widgets/custom_elevated_button.dart';
import 'package:joshua_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ForgotPasswordScreen extends GetWidget<ForgotPasswordController> {
  ForgotPasswordScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                leadingWidth: getHorizontalSize(77),
                leading: Container(
                    margin: getMargin(left: 16, top: 18, bottom: 18),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadiusStyle.circleBorder14),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppbarImage(
                              svgPath: ImageConstant.imgArrowleft,
                              onTap: () {
                                onTapArrowleftone();
                              }),
                          AppbarSubtitle1(
                              text: "lbl_back".tr,
                              margin: getMargin(top: 5, bottom: 7))
                        ])),
                actions: [
                  AppbarImage1(
                      imagePath: ImageConstant.imgGroup3,
                      margin: getMargin(all: 16))
                ],
                styleType: Style.bgOutline),
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                padding: getPadding(top: 65),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0.77, 0.36),
                        end: Alignment(0.75, 1.31),
                        colors: [
                      theme.colorScheme.onPrimary.withOpacity(1),
                      theme.colorScheme.primaryContainer,
                      appTheme.blue900
                    ])),
                child: Form(
                    key: _formKey,
                    child: Container(
                        width: double.maxFinite,
                        padding: getPadding(left: 16, top: 141, right: 16),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomTextFormField(
                                  controller: controller.passwordController,
                                  hintText: "lbl_old_password".tr,
                                  hintStyle: theme.textTheme.bodyMedium!,
                                  textInputType: TextInputType.visiblePassword,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidPassword(value,
                                            isRequired: true))) {
                                      return "Please enter valid password";
                                    }
                                    return null;
                                  },
                                  obscureText: true),
                              CustomTextFormField(
                                  controller: controller.newpasswordController,
                                  margin: getMargin(top: 16),
                                  hintText: "lbl_new_password".tr,
                                  hintStyle: theme.textTheme.bodyMedium!,
                                  textInputType: TextInputType.visiblePassword,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidPassword(value,
                                            isRequired: true))) {
                                      return "Please enter valid password";
                                    }
                                    return null;
                                  },
                                  obscureText: true),
                              CustomTextFormField(
                                  controller: controller.newpasswordController1,
                                  margin: getMargin(top: 16),
                                  hintText: "msg_confirm_new_password".tr,
                                  hintStyle: theme.textTheme.bodyMedium!,
                                  textInputAction: TextInputAction.done,
                                  textInputType: TextInputType.visiblePassword,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidPassword(value,
                                            isRequired: true))) {
                                      return "Please enter valid password";
                                    }
                                    return null;
                                  },
                                  obscureText: true),
                              CustomElevatedButton(
                                  height: getVerticalSize(56),
                                  text: "lbl_change_password".tr,
                                  margin: getMargin(top: 29, bottom: 5),
                                  buttonStyle: CustomButtonStyles.fillYellow,
                                  buttonTextStyle: CustomTextStyles
                                      .titleSmallOnSecondaryContainer,
                                  onTap: () {
                                    onTapChangepassword();
                                  })
                            ]))))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }

  /// Navigates to the homeNineScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the homeNineScreen.
  onTapChangepassword() {
    Get.toNamed(
      AppRoutes.homeNineScreen,
    );
  }
}
