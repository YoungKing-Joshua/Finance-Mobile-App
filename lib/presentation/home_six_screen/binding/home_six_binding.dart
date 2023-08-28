import '../controller/home_six_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HomeSixScreen.
///
/// This class ensures that the HomeSixController is created when the
/// HomeSixScreen is first loaded.
class HomeSixBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeSixController());
  }
}
