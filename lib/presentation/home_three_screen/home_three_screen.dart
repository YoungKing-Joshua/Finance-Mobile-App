import 'controller/home_three_controller.dart';
import 'package:flutter/material.dart';
import 'package:joshua_s_application1/core/app_export.dart';
import 'package:joshua_s_application1/widgets/app_bar/appbar_image_1.dart';
import 'package:joshua_s_application1/widgets/app_bar/appbar_image_2.dart';
import 'package:joshua_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:joshua_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:joshua_s_application1/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class HomeThreeScreen extends GetWidget<HomeThreeController> {
  const HomeThreeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: getVerticalSize(262),
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: getVerticalSize(65),
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          color: theme.colorScheme.onPrimary.withOpacity(1),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: getVerticalSize(156),
                            width: double.maxFinite,
                            decoration:
                                AppDecoration.gradientErrorContainerToLime,
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
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
                                                  style: theme
                                                      .textTheme.labelMedium,
                                                ),
                                              ),
                                              Opacity(
                                                opacity: 0.8,
                                                child: Text(
                                                  "msg_875431143137098707".tr,
                                                  style: theme
                                                      .textTheme.labelMedium,
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
                                    style:
                                        CustomTextStyles.bodySmallOnPrimary12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomAppBar(
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
                  ],
                ),
              ),
              CustomImageView(
                svgPath: ImageConstant.imgBookmark,
                height: getVerticalSize(38),
                width: getHorizontalSize(23),
                margin: getMargin(
                  top: 188,
                ),
              ),
              Spacer(),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          margin: getMargin(
            right: 58,
          ),
          decoration: AppDecoration.outlineOnPrimary,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: getVerticalSize(72),
                width: getHorizontalSize(202),
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgHomeOnprimary,
                      height: getVerticalSize(72),
                      width: getHorizontalSize(202),
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: getPadding(
                          left: 77,
                          bottom: 8,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgHome,
                              height: getSize(32),
                              width: getSize(32),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 4,
                              ),
                              child: Text(
                                "lbl_home".tr,
                                style: CustomTextStyles.labelMediumYellow800,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 43,
                  top: 12,
                  bottom: 8,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgFile,
                      height: getSize(32),
                      width: getSize(32),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 4,
                      ),
                      child: Text(
                        "lbl_transactions".tr,
                        style: CustomTextStyles.bodySmallOnPrimary,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
