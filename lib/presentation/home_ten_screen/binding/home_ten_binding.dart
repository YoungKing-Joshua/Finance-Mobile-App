import '../controller/home_ten_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HomeTenScreen.
///
/// This class ensures that the HomeTenController is created when the
/// HomeTenScreen is first loaded.
class HomeTenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeTenController());
  }
}
