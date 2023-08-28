import '../controller/home_five_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HomeFiveScreen.
///
/// This class ensures that the HomeFiveController is created when the
/// HomeFiveScreen is first loaded.
class HomeFiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeFiveController());
  }
}
