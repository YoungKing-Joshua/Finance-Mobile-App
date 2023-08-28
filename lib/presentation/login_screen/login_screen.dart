import 'controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:joshua_s_application1/core/app_export.dart';
import 'package:joshua_s_application1/core/utils/validation_functions.dart';
import 'package:joshua_s_application1/widgets/custom_elevated_button.dart';
import 'package:joshua_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
  LoginScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
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
                        padding: getPadding(
                            left: 16, top: 39, right: 16, bottom: 39),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgGroup3,
                                  height: getVerticalSize(62),
                                  width: getHorizontalSize(157),
                                  margin: getMargin(top: 46)),
                              CustomTextFormField(
                                  controller: controller.emailController,
                                  margin: getMargin(top: 91),
                                  hintText: "lbl_email".tr,
                                  hintStyle: theme.textTheme.bodyMedium!,
                                  textInputType: TextInputType.emailAddress,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidEmail(value,
                                            isRequired: true))) {
                                      return "Please enter valid email";
                                    }
                                    return null;
                                  }),
                              CustomTextFormField(
                                  controller: controller.passwordController,
                                  margin: getMargin(top: 16),
                                  hintText: "lbl_password".tr,
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
                                  text: "lbl_login".tr,
                                  margin: getMargin(top: 68),
                                  buttonStyle: CustomButtonStyles.fillYellow,
                                  buttonTextStyle: CustomTextStyles
                                      .titleSmallOnSecondaryContainer,
                                  onTap: () {
                                    onTapLogin();
                                  }),
                              Spacer(),
                              GestureDetector(
                                  onTap: () {
                                    onTapTxtForgotpassword();
                                  },
                                  child: Text("msg_forgot_password".tr,
                                      style: CustomTextStyles.bodySmallGray100))
                            ]))))));
  }

  /// Navigates to the splashScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the splashScreen.
  onTapLogin() {
    Get.toNamed(
      AppRoutes.splashScreen,
    );
  }

  /// Navigates to the forgotPasswordOneScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the forgotPasswordOneScreen.
  onTapTxtForgotpassword() {
    Get.toNamed(
      AppRoutes.forgotPasswordOneScreen,
    );
  }
}
