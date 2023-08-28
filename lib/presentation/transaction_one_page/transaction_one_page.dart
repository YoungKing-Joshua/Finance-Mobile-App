import '../transaction_one_page/widgets/usertransaction1_item_widget.dart';
import 'controller/transaction_one_controller.dart';
import 'models/transaction_one_model.dart';
import 'models/usertransaction1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:joshua_s_application1/core/app_export.dart';
import 'package:joshua_s_application1/widgets/custom_elevated_button.dart';
import 'package:joshua_s_application1/widgets/custom_icon_button.dart';

class TransactionOnePage extends StatelessWidget {
  TransactionOnePage({Key? key})
      : super(
          key: key,
        );

  TransactionOneController controller =
      Get.put(TransactionOneController(TransactionOneModel().obs));

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
                    Expanded(
                      child: SizedBox(
                        width: double.maxFinite,
                        child: Container(
                          padding: getPadding(
                            left: 17,
                            right: 17,
                          ),
                          decoration: AppDecoration.outlinePrimary,
                          child: Padding(
                            padding: getPadding(
                              top: 12,
                              right: 1,
                            ),
                            child: Obx(
                              () => ListView.separated(
                                physics: BouncingScrollPhysics(),
                                shrinkWrap: true,
                                separatorBuilder: (
                                  context,
                                  index,
                                ) {
                                  return SizedBox(
                                    height: getVerticalSize(24),
                                  );
                                },
                                itemCount: controller
                                    .transactionOneModelObj
                                    .value
                                    .usertransaction1ItemList
                                    .value
                                    .length,
                                itemBuilder: (context, index) {
                                  Usertransaction1ItemModel model = controller
                                      .transactionOneModelObj
                                      .value
                                      .usertransaction1ItemList
                                      .value[index];
                                  return Usertransaction1ItemWidget(
                                    model,
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: double.maxFinite,
                      margin: getMargin(
                        top: 13,
                      ),
                      padding: getPadding(
                        left: 17,
                        top: 11,
                        right: 17,
                        bottom: 11,
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
                            decoration: AppDecoration.fillLime.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder23,
                            ),
                            child: CustomIconButton(
                              height: getSize(32),
                              width: getSize(32),
                              padding: getPadding(
                                all: 8,
                              ),
                              decoration: IconButtonStyleHelper
                                  .gradientErrorContainerToLimeTL16,
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
                                        "lbl_ghc_10_000_00".tr,
                                        style: theme.textTheme.titleMedium,
                                      ),
                                      CustomElevatedButton(
                                        width: getHorizontalSize(45),
                                        text: "lbl_credit".tr,
                                        margin: getMargin(
                                          left: 7,
                                        ),
                                        buttonStyle: CustomButtonStyles
                                            .fillErrorContainer,
                                        buttonTextStyle: CustomTextStyles
                                            .labelSmallErrorContainer,
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 62,
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
                                      top: 6,
                                    ),
                                    child: Text(
                                      "lbl_deposit".tr,
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
