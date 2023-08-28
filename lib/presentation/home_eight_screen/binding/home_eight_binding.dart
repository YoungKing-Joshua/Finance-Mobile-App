import '../controller/home_eight_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HomeEightScreen.
///
/// This class ensures that the HomeEightController is created when the
/// HomeEightScreen is first loaded.
class HomeEightBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeEightController());
  }
}
