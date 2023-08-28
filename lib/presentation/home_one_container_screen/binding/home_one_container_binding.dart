import '../controller/home_one_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HomeOneContainerScreen.
///
/// This class ensures that the HomeOneContainerController is created when the
/// HomeOneContainerScreen is first loaded.
class HomeOneContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeOneContainerController());
  }
}
