import '../controller/home_three_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HomeThreeScreen.
///
/// This class ensures that the HomeThreeController is created when the
/// HomeThreeScreen is first loaded.
class HomeThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeThreeController());
  }
}
