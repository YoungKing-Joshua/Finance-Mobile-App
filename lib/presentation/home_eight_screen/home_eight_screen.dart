import '../home_eight_screen/widgets/transactiondeta3_item_widget.dart';
import 'controller/home_eight_controller.dart';
import 'models/transactiondeta3_item_model.dart';
import 'package:flutter/material.dart';
import 'package:joshua_s_application1/core/app_export.dart';
import 'package:joshua_s_application1/presentation/home_one_page/home_one_page.dart';
import 'package:joshua_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:joshua_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:joshua_s_application1/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class HomeEightScreen extends GetWidget<HomeEightController> {
  const HomeEightScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        appBar: CustomAppBar(
          centerTitle: true,
          title: AppbarTitle(
            text: "msg_password_changed".tr,
          ),
          styleType: Style.bgOutline,
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(156),
                width: double.maxFinite,
                decoration: AppDecoration.gradientErrorContainerToLime,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: getPadding(
                          left: 16,
                          right: 16,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Opacity(
                              opacity: 0.8,
                              child: Text(
                                "lbl_account_balance".tr,
                                style: CustomTextStyles
                                    .titleSmallOnPrimaryContainer,
                              ),
                            ),
                            Text(
                              "lbl_ghc_10_000_00".tr,
                              style: theme.textTheme.displaySmall,
                            ),
                            Padding(
                              padding: getPadding(
                                top: 1,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Opacity(
                                    opacity: 0.8,
                                    child: Text(
                                      "msg_checking_account".tr,
                                      style: theme.textTheme.labelMedium,
                                    ),
                                  ),
                                  Opacity(
                                    opacity: 0.8,
                                    child: Text(
                                      "msg_875431143137098707".tr,
                                      style: theme.textTheme.labelMedium,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Opacity(
                      opacity: 0.2,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgVector,
                        height: getVerticalSize(156),
                        width: getHorizontalSize(373),
                        alignment: Alignment.center,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.maxFinite,
                padding: getPadding(
                  left: 16,
                  top: 10,
                  right: 16,
                  bottom: 10,
                ),
                decoration: AppDecoration.fillPrimary,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "msg_recent_transactions".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                    Padding(
                      padding: getPadding(
                        top: 2,
                      ),
                      child: Text(
                        "lbl_see_all".tr,
                        style: CustomTextStyles.bodySmallOnPrimary12,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: getPadding(
                    top: 2,
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
                      itemCount: controller.homeEightModelObj.value
                          .transactiondeta3ItemList.value.length,
                      itemBuilder: (context, index) {
                        Transactiondeta3ItemModel model = controller
                            .homeEightModelObj
                            .value
                            .transactiondeta3ItemList
                            .value[index];
                        return Transactiondeta3ItemWidget(
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
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Get.toNamed(getCurrentRoute(type), id: 1);
          },
        ),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return "/";
      case BottomBarEnum.Transactions:
        return AppRoutes.homeOnePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeOnePage:
        return HomeOnePage();
      default:
        return DefaultWidget();
    }
  }
}
