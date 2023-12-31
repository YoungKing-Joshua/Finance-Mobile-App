import 'package:joshua_s_application1/core/app_export.dart';
import 'package:joshua_s_application1/presentation/forgot_password_screen/models/forgot_password_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ForgotPasswordScreen.
///
/// This class manages the state of the ForgotPasswordScreen, including the
/// current forgotPasswordModelObj
class ForgotPasswordController extends GetxController {
  TextEditingController passwordController = TextEditingController();

  TextEditingController newpasswordController = TextEditingController();

  TextEditingController newpasswordController1 = TextEditingController();

  Rx<ForgotPasswordModel> forgotPasswordModelObj = ForgotPasswordModel().obs;

  @override
  void onClose() {
    super.onClose();
    passwordController.dispose();
    newpasswordController.dispose();
    newpasswordController1.dispose();
  }
}
