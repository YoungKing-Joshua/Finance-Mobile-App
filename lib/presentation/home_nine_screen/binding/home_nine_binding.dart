import '../controller/home_nine_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HomeNineScreen.
///
/// This class ensures that the HomeNineController is created when the
/// HomeNineScreen is first loaded.
class HomeNineBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeNineController());
  }
}
