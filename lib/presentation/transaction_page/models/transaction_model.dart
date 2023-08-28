import 'package:get/get.dart';
import 'transactiondeta1_item_model.dart';

/// This class defines the variables used in the [transaction_page],
/// and is typically used to hold data that is passed between different parts of the application.
class TransactionModel {
  Rx<List<Transactiondeta1ItemModel>> transactiondeta1ItemList =
      Rx(List.generate(4, (index) => Transactiondeta1ItemModel()));
}
