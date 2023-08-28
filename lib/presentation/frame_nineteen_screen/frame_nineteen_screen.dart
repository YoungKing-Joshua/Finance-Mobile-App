import '../frame_nineteen_screen/widgets/transactionbala_item_widget.dart';
import 'controller/frame_nineteen_controller.dart';
import 'models/transactionbala_item_model.dart';
import 'package:flutter/material.dart';
import 'package:joshua_s_application1/core/app_export.dart';

// ignore_for_file: must_be_immutable
class FrameNineteenScreen extends GetWidget<FrameNineteenController> {
  const FrameNineteenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            top: 16,
            bottom: 16,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(5),
                width: getHorizontalSize(39),
                decoration: BoxDecoration(
                  color: appTheme.blueGray100,
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(2),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 18,
                ),
                child: Text(
                  "msg_transaction_details".tr,
                  style: CustomTextStyles.bodyMediumGray900,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: getPadding(
                    top: 18,
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
                          height: getVerticalSize(1),
                        );
                      },
                      itemCount: controller.frameNineteenModelObj.value
                          .transactionbalaItemList.value.length,
                      itemBuilder: (context, index) {
                        TransactionbalaItemModel model = controller
                            .frameNineteenModelObj
                            .value
                            .transactionbalaItemList
                            .value[index];
                        return TransactionbalaItemWidget(
                          model,
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
