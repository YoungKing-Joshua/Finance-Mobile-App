import 'package:get/get.dart';
import 'transactionbala_item_model.dart';

/// This class defines the variables used in the [frame_nineteen_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FrameNineteenModel {
  Rx<List<TransactionbalaItemModel>> transactionbalaItemList =
      Rx(List.generate(2, (index) => TransactionbalaItemModel()));
}
