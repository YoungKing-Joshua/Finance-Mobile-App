import 'package:joshua_s_application1/core/app_export.dart';
import 'package:joshua_s_application1/presentation/home_eight_screen/models/home_eight_model.dart';

/// A controller class for the HomeEightScreen.
///
/// This class manages the state of the HomeEightScreen, including the
/// current homeEightModelObj
class HomeEightController extends GetxController {
  Rx<HomeEightModel> homeEightModelObj = HomeEightModel().obs;
}
