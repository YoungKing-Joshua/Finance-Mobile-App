import 'package:joshua_s_application1/core/app_export.dart';
import 'package:joshua_s_application1/presentation/home_six_screen/models/home_six_model.dart';

/// A controller class for the HomeSixScreen.
///
/// This class manages the state of the HomeSixScreen, including the
/// current homeSixModelObj
class HomeSixController extends GetxController {
  Rx<HomeSixModel> homeSixModelObj = HomeSixModel().obs;
}
