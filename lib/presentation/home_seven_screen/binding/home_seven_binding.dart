import '../controller/home_seven_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HomeSevenScreen.
///
/// This class ensures that the HomeSevenController is created when the
/// HomeSevenScreen is first loaded.
class HomeSevenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeSevenController());
  }
}
