import '../transaction_page/widgets/transactiondeta1_item_widget.dart';
import 'controller/transaction_controller.dart';
import 'models/transaction_model.dart';
import 'models/transactiondeta1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:joshua_s_application1/core/app_export.dart';

class TransactionPage extends StatelessWidget {
  TransactionPage({Key? key})
      : super(
          key: key,
        );

  TransactionController controller =
      Get.put(TransactionController(TransactionModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimaryContainer,
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
              itemCount: controller.transactionModelObj.value
                  .transactiondeta1ItemList.value.length,
              itemBuilder: (context, index) {
                Transactiondeta1ItemModel model = controller.transactionModelObj
                    .value.transactiondeta1ItemList.value[index];
                return Transactiondeta1ItemWidget(
                  model,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
