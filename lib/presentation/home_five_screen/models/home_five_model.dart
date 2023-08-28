import 'package:get/get.dart';
import 'transactiondeta_item_model.dart';

/// This class defines the variables used in the [home_five_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeFiveModel {
  Rx<List<TransactiondetaItemModel>> transactiondetaItemList =
      Rx(List.generate(4, (index) => TransactiondetaItemModel()));
}
