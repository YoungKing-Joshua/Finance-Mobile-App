import 'package:get/get.dart';
import 'transactiondeta4_item_model.dart';

/// This class defines the variables used in the [home_ten_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeTenModel {
  Rx<List<Transactiondeta4ItemModel>> transactiondeta4ItemList =
      Rx(List.generate(4, (index) => Transactiondeta4ItemModel()));
}
