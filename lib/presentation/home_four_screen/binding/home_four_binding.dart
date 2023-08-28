import '../controller/home_four_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HomeFourScreen.
///
/// This class ensures that the HomeFourController is created when the
/// HomeFourScreen is first loaded.
class HomeFourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeFourController());
  }
}
