import 'package:joshua_s_application1/core/app_export.dart';
import 'package:joshua_s_application1/presentation/home_three_screen/models/home_three_model.dart';

/// A controller class for the HomeThreeScreen.
///
/// This class manages the state of the HomeThreeScreen, including the
/// current homeThreeModelObj
class HomeThreeController extends GetxController {
  Rx<HomeThreeModel> homeThreeModelObj = HomeThreeModel().obs;
}
