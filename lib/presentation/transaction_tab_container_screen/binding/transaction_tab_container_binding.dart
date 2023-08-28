import '../controller/transaction_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TransactionTabContainerScreen.
///
/// This class ensures that the TransactionTabContainerController is created when the
/// TransactionTabContainerScreen is first loaded.
class TransactionTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TransactionTabContainerController());
  }
}
