import 'package:get/get.dart';

/// This class is used in the [usertransaction_item_widget] screen.
class UsertransactionItemModel {
  Rx<String> transactionAmouTxt = Rx("GHC 50.00");

  Rx<String> transactionTagTxt = Rx("#Gift");

  Rx<String>? id = Rx("");
}
