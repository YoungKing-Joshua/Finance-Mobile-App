import 'package:get/get.dart';

/// This class is used in the [transactiondeta_item_widget] screen.
class TransactiondetaItemModel {
  Rx<String> amountTxt = Rx("GHC 50.00");

  Rx<String> giftTagTxt = Rx("#Gift");

  Rx<String>? id = Rx("");
}
