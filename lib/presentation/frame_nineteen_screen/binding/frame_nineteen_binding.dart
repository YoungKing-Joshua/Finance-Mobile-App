import '../controller/frame_nineteen_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FrameNineteenScreen.
///
/// This class ensures that the FrameNineteenController is created when the
/// FrameNineteenScreen is first loaded.
class FrameNineteenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FrameNineteenController());
  }
}
