import 'package:get/get.dart';
import 'transactiondeta3_item_model.dart';

/// This class defines the variables used in the [home_eight_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeEightModel {
  Rx<List<Transactiondeta3ItemModel>> transactiondeta3ItemList =
      Rx(List.generate(4, (index) => Transactiondeta3ItemModel()));
}
