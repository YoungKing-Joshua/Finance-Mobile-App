import 'package:get/get.dart';
import 'transactiondeta2_item_model.dart';

/// This class defines the variables used in the [home_nine_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeNineModel {
  Rx<List<Transactiondeta2ItemModel>> transactiondeta2ItemList =
      Rx(List.generate(4, (index) => Transactiondeta2ItemModel()));
}
