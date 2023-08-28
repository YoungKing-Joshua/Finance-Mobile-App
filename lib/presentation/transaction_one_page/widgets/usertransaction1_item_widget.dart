import '../controller/transaction_one_controller.dart';
import '../models/usertransaction1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:joshua_s_application1/core/app_export.dart';
import 'package:joshua_s_application1/widgets/custom_elevated_button.dart';
import 'package:joshua_s_application1/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Usertransaction1ItemWidget extends StatelessWidget {
  Usertransaction1ItemWidget(
    this.usertransaction1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Usertransaction1ItemModel usertransaction1ItemModelObj;

  var controller = Get.find<TransactionOneController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: getSize(46),
          width: getSize(46),
          padding: getPadding(
            all: 6,
          ),
          decoration: AppDecoration.fillLime.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder23,
          ),
          child: CustomIconButton(
            height: getSize(32),
            width: getSize(32),
            padding: getPadding(
              all: 8,
            ),
            decoration: IconButtonStyleHelper.gradientErrorContainerToLime,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        usertransaction1ItemModelObj.amountTxt.value,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    CustomElevatedButton(
                      width: getHorizontalSize(45),
                      text: "lbl_credit".tr,
                      margin: getMargin(
                        left: 7,
                      ),
                      buttonStyle: CustomButtonStyles.fillErrorContainer,
                      buttonTextStyle:
                          CustomTextStyles.labelSmallErrorContainer,
                    ),
                    Padding(
                      padding: getPadding(
                        left: 71,
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
                      usertransaction1ItemModelObj.inflowTxt.value,
                      style: CustomTextStyles.bodySmall12,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
