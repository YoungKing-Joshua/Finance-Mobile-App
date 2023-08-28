import 'controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:joshua_s_application1/core/app_export.dart';
import 'package:joshua_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:joshua_s_application1/widgets/app_bar/appbar_image_1.dart';
import 'package:joshua_s_application1/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:joshua_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:joshua_s_application1/widgets/custom_outlined_button.dart';

class ProfileScreen extends GetWidget<ProfileController> {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor:
                theme.colorScheme.onPrimaryContainer.withOpacity(1),
            appBar: CustomAppBar(
                leadingWidth: getHorizontalSize(77),
                leading: Container(
                    margin: getMargin(left: 16, top: 18, bottom: 18),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadiusStyle.circleBorder14),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppbarImage(
                              svgPath: ImageConstant.imgArrowleft,
                              onTap: () {
                                onTapArrowleftone();
                              }),
                          AppbarSubtitle1(
                              text: "lbl_back".tr,
                              margin: getMargin(top: 5, bottom: 7))
                        ])),
                actions: [
                  AppbarImage1(
                      imagePath: ImageConstant.imgGroup3,
                      margin: getMargin(all: 16))
                ],
                styleType: Style.bgOutline),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: getVerticalSize(156),
                          width: double.maxFinite,
                          child:
                              Stack(alignment: Alignment.centerLeft, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    padding: getPadding(
                                        left: 31,
                                        top: 13,
                                        right: 31,
                                        bottom: 13),
                                    decoration: AppDecoration.fillLime,
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                SizedBox(
                                                    height: getVerticalSize(32),
                                                    width:
                                                        getHorizontalSize(58),
                                                    child: Stack(
                                                        alignment: Alignment
                                                            .bottomLeft,
                                                        children: [
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .topCenter,
                                                              child: Opacity(
                                                                  opacity: 0.8,
                                                                  child: Text(
                                                                      "lbl_first_name"
                                                                          .tr
                                                                          .toUpperCase(),
                                                                      style: CustomTextStyles
                                                                          .labelMediumOnPrimary))),
                                                          Align(
                                                              alignment: Alignment
                                                                  .bottomLeft,
                                                              child: Opacity(
                                                                  opacity: 0.8,
                                                                  child: Text(
                                                                      "lbl_john"
                                                                          .tr,
                                                                      style: CustomTextStyles
                                                                          .bodyMediumOnPrimary_1)))
                                                        ])),
                                                Container(
                                                    height: getVerticalSize(32),
                                                    width:
                                                        getHorizontalSize(71),
                                                    margin: getMargin(left: 25),
                                                    child: Stack(
                                                        alignment: Alignment
                                                            .bottomLeft,
                                                        children: [
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .topCenter,
                                                              child: Opacity(
                                                                  opacity: 0.8,
                                                                  child: Text(
                                                                      "lbl_other_names"
                                                                          .tr
                                                                          .toUpperCase(),
                                                                      style: CustomTextStyles
                                                                          .labelMediumOnPrimary))),
                                                          Align(
                                                              alignment: Alignment
                                                                  .bottomLeft,
                                                              child: Opacity(
                                                                  opacity: 0.8,
                                                                  child: Text(
                                                                      "lbl_jimoh"
                                                                          .tr,
                                                                      style: CustomTextStyles
                                                                          .bodyMediumOnPrimary_1)))
                                                        ]))
                                              ]),
                                          Padding(
                                              padding: getPadding(
                                                  top: 15, right: 45),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child: Opacity(
                                                                  opacity: 0.8,
                                                                  child: Text(
                                                                      "lbl_gender"
                                                                          .tr
                                                                          .toUpperCase(),
                                                                      style: CustomTextStyles
                                                                          .labelMediumOnPrimary))),
                                                          Opacity(
                                                              opacity: 0.8,
                                                              child: Text(
                                                                  "lbl_male".tr,
                                                                  style: CustomTextStyles
                                                                      .bodyMediumOnPrimary_1))
                                                        ]),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 43),
                                                        child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  child: Opacity(
                                                                      opacity:
                                                                          0.8,
                                                                      child: Text(
                                                                          "lbl_title"
                                                                              .tr
                                                                              .toUpperCase(),
                                                                          style:
                                                                              CustomTextStyles.labelMediumOnPrimary))),
                                                              Opacity(
                                                                  opacity: 0.8,
                                                                  child: Text(
                                                                      "lbl_mr"
                                                                          .tr,
                                                                      style: CustomTextStyles
                                                                          .bodyMediumOnPrimary_1))
                                                            ]))
                                                  ])),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Opacity(
                                                  opacity: 0.8,
                                                  child: Padding(
                                                      padding:
                                                          getPadding(top: 16),
                                                      child: Text(
                                                          "lbl_id"
                                                              .tr
                                                              .toUpperCase(),
                                                          style: CustomTextStyles
                                                              .labelMediumOnPrimary)))),
                                          Opacity(
                                              opacity: 0.8,
                                              child: Padding(
                                                  padding:
                                                      getPadding(right: 89),
                                                  child: Text("lbl_23399922".tr,
                                                      style: CustomTextStyles
                                                          .bodyMediumOnPrimary_1)))
                                        ]))),
                            CustomImageView(
                                imagePath: ImageConstant.imgUnion156x176,
                                height: getVerticalSize(156),
                                width: getHorizontalSize(176),
                                alignment: Alignment.centerLeft)
                          ])),
                      Container(
                          padding: getPadding(
                              left: 16, top: 12, right: 16, bottom: 12),
                          decoration: AppDecoration.fillPrimary,
                          child: Text("msg_account_settings".tr,
                              style: theme.textTheme.titleSmall)),
                      CustomOutlinedButton(
                          text: "msg_change_account_password".tr,
                          leftIcon: Container(
                              margin: getMargin(right: 17),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgLock)),
                          onTap: () {
                            onTapChangeaccount();
                          }),
                      CustomOutlinedButton(
                          text: "lbl_logout".tr,
                          margin: getMargin(top: 1),
                          leftIcon: Container(
                              margin: getMargin(right: 17),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgRefresh)),
                          onTap: () {
                            onTapLogout();
                          }),
                      Container(
                          padding: getPadding(
                              left: 16, top: 13, right: 16, bottom: 13),
                          decoration: AppDecoration.fillPrimary,
                          child: Text("lbl_about".tr,
                              style: theme.textTheme.titleSmall)),
                      Container(
                          padding: getPadding(
                              left: 17, top: 15, right: 17, bottom: 15),
                          decoration: AppDecoration.outlinePrimary,
                          child: Text("msg_terms_and_conditions".tr,
                              style: CustomTextStyles.bodyMediumOnPrimary)),
                      Container(
                          margin: getMargin(top: 1, bottom: 5),
                          padding: getPadding(
                              left: 17, top: 14, right: 17, bottom: 14),
                          decoration: AppDecoration.outlinePrimary,
                          child: Text("lbl_privacy_policy".tr,
                              style: CustomTextStyles.bodyMediumOnPrimary))
                    ])),
            bottomNavigationBar: CustomOutlinedButton(
                height: getVerticalSize(41),
                text: "lbl_app_version".tr,
                buttonStyle: CustomButtonStyles.outlinePrimary1,
                buttonTextStyle: CustomTextStyles.labelLargeOnPrimary)));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }

  /// Navigates to the forgotPasswordScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the forgotPasswordScreen.
  onTapChangeaccount() {
    Get.toNamed(
      AppRoutes.forgotPasswordScreen,
    );
  }

  /// Navigates to the loginScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the loginScreen.
  onTapLogout() {
    Get.toNamed(
      AppRoutes.loginScreen,
    );
  }
}
