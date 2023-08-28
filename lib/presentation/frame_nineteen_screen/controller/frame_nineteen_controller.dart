import 'package:joshua_s_application1/core/app_export.dart';
import 'package:joshua_s_application1/presentation/frame_nineteen_screen/models/frame_nineteen_model.dart';

/// A controller class for the FrameNineteenScreen.
///
/// This class manages the state of the FrameNineteenScreen, including the
/// current frameNineteenModelObj
class FrameNineteenController extends GetxController {
  Rx<FrameNineteenModel> frameNineteenModelObj = FrameNineteenModel().obs;
}
