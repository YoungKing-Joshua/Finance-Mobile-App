import 'package:joshua_s_application1/core/app_export.dart';
import 'package:joshua_s_application1/presentation/home_two_screen/models/home_two_model.dart';

/// A controller class for the HomeTwoScreen.
///
/// This class manages the state of the HomeTwoScreen, including the
/// current homeTwoModelObj
class HomeTwoController extends GetxController {
  Rx<HomeTwoModel> homeTwoModelObj = HomeTwoModel().obs;
}
