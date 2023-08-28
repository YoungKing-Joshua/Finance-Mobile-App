import 'package:joshua_s_application1/core/app_export.dart';
import 'package:joshua_s_application1/presentation/home_seven_screen/models/home_seven_model.dart';

/// A controller class for the HomeSevenScreen.
///
/// This class manages the state of the HomeSevenScreen, including the
/// current homeSevenModelObj
class HomeSevenController extends GetxController {
  Rx<HomeSevenModel> homeSevenModelObj = HomeSevenModel().obs;
}
