import '../controller/home_five_controller.dart';
import '../models/transactiondeta_item_model.dart';
import 'package:flutter/material.dart';
import 'package:joshua_s_application1/core/app_export.dart';
import 'package:joshua_s_application1/widgets/custom_elevated_button.dart';
import 'package:joshua_s_application1/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class TransactiondetaItemWidget extends StatelessWidget {
  TransactiondetaItemWidget(
    this.transactiondetaItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TransactiondetaItemModel transactiondetaItemModelObj;

  var controller = Get.find<HomeFiveController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: getPadding(
        left: 17,
        top: 12,
        right: 17,
        bottom: 12,
      ),
      decoration: AppDecoration.outlinePrimary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: getSize(46),
            width: getSize(46),
            padding: getPadding(
              all: 7,
            ),
            decoration: AppDecoration.fillCyan.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder23,
            ),
            child: CustomIconButton(
              height: getSize(32),
              width: getSize(32),
              padding: getPadding(
                all: 8,
              ),
              alignment: Alignment.center,
              child: CustomImageView(
                svgPath: ImageConstant.imgClock,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: getPadding(
                left: 14,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Obx(
                        () => Text(
                          transactiondetaItemModelObj.amountTxt.value,
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                      CustomElevatedButton(
                        width: getHorizontalSize(42),
                        text: "lbl_debit".tr,
                        margin: getMargin(
                          left: 7,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 96,
                          bottom: 8,
                        ),
                        child: Text(
                          "lbl_01_02_2021".tr,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: getPadding(
                      top: 4,
                    ),
                    child: Obx(
                      () => Text(
                        transactiondetaItemModelObj.giftTagTxt.value,
                        style: CustomTextStyles.bodySmall12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
