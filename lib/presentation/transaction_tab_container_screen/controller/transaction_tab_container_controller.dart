import 'package:joshua_s_application1/core/app_export.dart';
import 'package:joshua_s_application1/presentation/transaction_tab_container_screen/models/transaction_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the TransactionTabContainerScreen.
///
/// This class manages the state of the TransactionTabContainerScreen, including the
/// current transactionTabContainerModelObj
class TransactionTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<TransactionTabContainerModel> transactionTabContainerModelObj =
      TransactionTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 3));
}
