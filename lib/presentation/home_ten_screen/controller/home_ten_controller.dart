import 'package:joshua_s_application1/core/app_export.dart';
import 'package:joshua_s_application1/presentation/home_ten_screen/models/home_ten_model.dart';

/// A controller class for the HomeTenScreen.
///
/// This class manages the state of the HomeTenScreen, including the
/// current homeTenModelObj
class HomeTenController extends GetxController {
  Rx<HomeTenModel> homeTenModelObj = HomeTenModel().obs;
}
