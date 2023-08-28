import 'package:get/get.dart';
import 'usertransaction1_item_model.dart';

/// This class defines the variables used in the [transaction_one_page],
/// and is typically used to hold data that is passed between different parts of the application.
class TransactionOneModel {
  Rx<List<Usertransaction1ItemModel>> usertransaction1ItemList =
      Rx(List.generate(2, (index) => Usertransaction1ItemModel()));
}
