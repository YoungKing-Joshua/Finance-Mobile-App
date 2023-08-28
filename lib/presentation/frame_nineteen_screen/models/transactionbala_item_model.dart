import 'package:get/get.dart';

/// This class is used in the [transactionbala_item_widget] screen.
class TransactionbalaItemModel {
  Rx<String> balanceBeforeTrTxt = Rx("Balance Before Transaction");

  Rx<String> balanceBeforeTrTxt1 = Rx("GHC 0.00");

  Rx<String> balanceAfterTraTxt = Rx("Balance After Transaction");

  Rx<String> balanceAfterTraTxt1 = Rx("GHC 10,000.00");

  Rx<String>? id = Rx("");
}
