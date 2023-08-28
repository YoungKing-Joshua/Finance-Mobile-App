import '../controller/home_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HomeTwoScreen.
///
/// This class ensures that the HomeTwoController is created when the
/// HomeTwoScreen is first loaded.
class HomeTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeTwoController());
  }
}
