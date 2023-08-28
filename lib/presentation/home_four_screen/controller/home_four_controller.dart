import 'package:joshua_s_application1/core/app_export.dart';
import 'package:joshua_s_application1/presentation/home_four_screen/models/home_four_model.dart';

/// A controller class for the HomeFourScreen.
///
/// This class manages the state of the HomeFourScreen, including the
/// current homeFourModelObj
class HomeFourController extends GetxController {
  Rx<HomeFourModel> homeFourModelObj = HomeFourModel().obs;
}
