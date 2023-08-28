import 'package:joshua_s_application1/core/app_export.dart';
import 'package:joshua_s_application1/presentation/forgot_password_one_screen/models/forgot_password_one_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ForgotPasswordOneScreen.
///
/// This class manages the state of the ForgotPasswordOneScreen, including the
/// current forgotPasswordOneModelObj
class ForgotPasswordOneController extends GetxController {
  TextEditingController newpasswordController = TextEditingController();

  TextEditingController newpasswordController1 = TextEditingController();

  Rx<ForgotPasswordOneModel> forgotPasswordOneModelObj =
      ForgotPasswordOneModel().obs;

  @override
  void onClose() {
    super.onClose();
    newpasswordController.dispose();
    newpasswordController1.dispose();
  }
}
