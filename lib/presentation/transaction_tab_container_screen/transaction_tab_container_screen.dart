import 'controller/transaction_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:joshua_s_application1/core/app_export.dart';
import 'package:joshua_s_application1/presentation/home_one_page/home_one_page.dart';
import 'package:joshua_s_application1/presentation/transaction_one_page/transaction_one_page.dart';
import 'package:joshua_s_application1/presentation/transaction_page/transaction_page.dart';
import 'package:joshua_s_application1/presentation/transaction_two_page/transaction_two_page.dart';
import 'package:joshua_s_application1/widgets/app_bar/appbar_image_1.dart';
import 'package:joshua_s_application1/widgets/app_bar/appbar_image_2.dart';
import 'package:joshua_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:joshua_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:joshua_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:joshua_s_application1/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class TransactionTabContainerScreen
    extends GetWidget<TransactionTabContainerController> {
  const TransactionTabContainerScreen({Key? key})
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
          leadingWidth: getHorizontalSize(68),
          leading: AppbarImage2(
            imagePath: ImageConstant.imgUnion,
            margin: getMargin(
              left: 16,
              top: 7,
              bottom: 16,
            ),
          ),
          title: Padding(
            padding: getPadding(
              left: 7,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AppbarSubtitle(
                  text: "lbl_good_morning".tr,
                  margin: getMargin(
                    right: 31,
                  ),
                ),
                AppbarTitle(
                  text: "lbl_mr_john_jimoh".tr,
                  margin: getMargin(
                    top: 1,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            AppbarImage1(
              imagePath: ImageConstant.imgGroup3,
              margin: getMargin(
                left: 16,
                top: 12,
                right: 16,
                bottom: 21,
              ),
            ),
          ],
          styleType: Style.bgOutline,
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: getPadding(
                  left: 16,
                  top: 7,
                  right: 16,
                  bottom: 7,
                ),
                decoration: AppDecoration.fillPrimary,
                child: Text(
                  "lbl_transactions".tr,
                  style: CustomTextStyles.titleMediumGray900,
                ),
              ),
              Container(
                height: getVerticalSize(39),
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary.withOpacity(0.32),
                  border: Border(
                    bottom: BorderSide(
                      color: theme.colorScheme.primary.withOpacity(1),
                      width: getHorizontalSize(1),
                    ),
                  ),
                ),
                child: TabBar(
                  controller: controller.tabviewController,
                  isScrollable: true,
                  labelColor: appTheme.gray900,
                  labelStyle: TextStyle(
                    fontSize: getFontSize(14),
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w600,
                  ),
                  unselectedLabelColor: appTheme.gray900,
                  unselectedLabelStyle: TextStyle(
                    fontSize: getFontSize(14),
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w600,
                  ),
                  indicator: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: theme.colorScheme.onPrimary.withOpacity(1),
                        width: getHorizontalSize(2),
                      ),
                    ),
                  ),
                  tabs: [
                    Tab(
                      child: Text(
                        "lbl_all".tr,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "lbl_debit".tr,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "lbl_credit".tr,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: getVerticalSize(548),
                  child: TabBarView(
                    controller: controller.tabviewController,
                    children: [
                      TransactionPage(),
                      TransactionTwoPage(),
                      TransactionOnePage(),
                    ],
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
