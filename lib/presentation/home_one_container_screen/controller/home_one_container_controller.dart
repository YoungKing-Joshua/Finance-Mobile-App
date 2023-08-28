import 'package:joshua_s_application1/core/app_export.dart';
import 'package:joshua_s_application1/presentation/home_one_container_screen/models/home_one_container_model.dart';

/// A controller class for the HomeOneContainerScreen.
///
/// This class manages the state of the HomeOneContainerScreen, including the
/// current homeOneContainerModelObj
class HomeOneContainerController extends GetxController {
  Rx<HomeOneContainerModel> homeOneContainerModelObj =
      HomeOneContainerModel().obs;
}
