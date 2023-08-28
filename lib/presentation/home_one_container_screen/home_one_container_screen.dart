import 'controller/home_one_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:joshua_s_application1/core/app_export.dart';
import 'package:joshua_s_application1/presentation/home_one_page/home_one_page.dart';
import 'package:joshua_s_application1/widgets/custom_bottom_bar.dart';

class HomeOneContainerScreen extends GetWidget<HomeOneContainerController> {
  const HomeOneContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor:
                theme.colorScheme.onPrimaryContainer.withOpacity(1),
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.homeOnePage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Get.toNamed(getCurrentRoute(type), id: 1);
            })));
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
