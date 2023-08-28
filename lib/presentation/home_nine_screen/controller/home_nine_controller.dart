import 'package:joshua_s_application1/core/app_export.dart';
import 'package:joshua_s_application1/presentation/home_nine_screen/models/home_nine_model.dart';

/// A controller class for the HomeNineScreen.
///
/// This class manages the state of the HomeNineScreen, including the
/// current homeNineModelObj
class HomeNineController extends GetxController {
  Rx<HomeNineModel> homeNineModelObj = HomeNineModel().obs;
}
