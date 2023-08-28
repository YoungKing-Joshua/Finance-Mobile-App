import '../controller/frame_nineteen_controller.dart';
import '../models/transactionbala_item_model.dart';
import 'package:flutter/material.dart';
import 'package:joshua_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class TransactionbalaItemWidget extends StatelessWidget {
  TransactionbalaItemWidget(
    this.transactionbalaItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TransactionbalaItemModel transactionbalaItemModelObj;

  var controller = Get.find<FrameNineteenController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 16,
        top: 14,
        right: 16,
        bottom: 14,
      ),
      decoration: AppDecoration.outlinePrimary,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: getPadding(
              right: 4,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(
                  () => Text(
                    transactionbalaItemModelObj.balanceBeforeTrTxt.value,
                    style: CustomTextStyles.bodySmallOnSecondaryContainer,
                  ),
                ),
                Obx(
                  () => Text(
                    transactionbalaItemModelObj.balanceBeforeTrTxt1.value,
                    style: CustomTextStyles.labelLargeOnSecondaryContainerBold,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              top: 5,
              right: 3,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(
                  () => Text(
                    transactionbalaItemModelObj.balanceAfterTraTxt.value,
                    style: CustomTextStyles.bodySmallOnSecondaryContainer,
                  ),
                ),
                Obx(
                  () => Text(
                    transactionbalaItemModelObj.balanceAfterTraTxt1.value,
                    style: CustomTextStyles.labelLargeOnSecondaryContainerBold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
