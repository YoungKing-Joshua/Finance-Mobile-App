import 'controller/transaction_two_controller.dart';
import 'models/transaction_two_model.dart';
import 'package:flutter/material.dart';
import 'package:joshua_s_application1/core/app_export.dart';
import 'package:joshua_s_application1/widgets/custom_elevated_button.dart';
import 'package:joshua_s_application1/widgets/custom_icon_button.dart';

class TransactionTwoPage extends StatelessWidget {
  TransactionTwoPage({Key? key})
      : super(
          key: key,
        );

  TransactionTwoController controller =
      Get.put(TransactionTwoController(TransactionTwoModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
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
                              all: 6,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "lbl_ghc_50_00".tr,
                                        style: theme.textTheme.titleMedium,
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
                                          left: 97,
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
                                    child: Text(
                                      "lbl_gift".tr,
                                      style: CustomTextStyles.bodySmall12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.maxFinite,
                      margin: getMargin(
                        top: 1,
                      ),
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
                              all: 6,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "lbl_ghc_1_000_00".tr,
                                        style: theme.textTheme.titleMedium,
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
                                          left: 74,
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
                                    child: Text(
                                      "lbl_withdrawal".tr,
                                      style: CustomTextStyles.bodySmall12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
