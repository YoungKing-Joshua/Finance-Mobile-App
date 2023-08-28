import 'package:joshua_s_application1/core/app_export.dart';
import 'package:joshua_s_application1/presentation/home_one_page/models/home_one_model.dart';

/// A controller class for the HomeOnePage.
///
/// This class manages the state of the HomeOnePage, including the
/// current homeOneModelObj
class HomeOneController extends GetxController {
  HomeOneController(this.homeOneModelObj);

  Rx<HomeOneModel> homeOneModelObj;
}
