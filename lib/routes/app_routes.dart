import 'package:joshua_s_application1/presentation/login_screen/login_screen.dart';
import 'package:joshua_s_application1/presentation/login_screen/binding/login_binding.dart';
import 'package:joshua_s_application1/presentation/forgot_password_one_screen/forgot_password_one_screen.dart';
import 'package:joshua_s_application1/presentation/forgot_password_one_screen/binding/forgot_password_one_binding.dart';
import 'package:joshua_s_application1/presentation/splash_screen/splash_screen.dart';
import 'package:joshua_s_application1/presentation/splash_screen/binding/splash_binding.dart';
import 'package:joshua_s_application1/presentation/home_screen/home_screen.dart';
import 'package:joshua_s_application1/presentation/home_screen/binding/home_binding.dart';
import 'package:joshua_s_application1/presentation/home_two_screen/home_two_screen.dart';
import 'package:joshua_s_application1/presentation/home_two_screen/binding/home_two_binding.dart';
import 'package:joshua_s_application1/presentation/home_three_screen/home_three_screen.dart';
import 'package:joshua_s_application1/presentation/home_three_screen/binding/home_three_binding.dart';
import 'package:joshua_s_application1/presentation/home_six_screen/home_six_screen.dart';
import 'package:joshua_s_application1/presentation/home_six_screen/binding/home_six_binding.dart';
import 'package:joshua_s_application1/presentation/home_four_screen/home_four_screen.dart';
import 'package:joshua_s_application1/presentation/home_four_screen/binding/home_four_binding.dart';
import 'package:joshua_s_application1/presentation/home_seven_screen/home_seven_screen.dart';
import 'package:joshua_s_application1/presentation/home_seven_screen/binding/home_seven_binding.dart';
import 'package:joshua_s_application1/presentation/home_one_container_screen/home_one_container_screen.dart';
import 'package:joshua_s_application1/presentation/home_one_container_screen/binding/home_one_container_binding.dart';
import 'package:joshua_s_application1/presentation/home_five_screen/home_five_screen.dart';
import 'package:joshua_s_application1/presentation/home_five_screen/binding/home_five_binding.dart';
import 'package:joshua_s_application1/presentation/transaction_tab_container_screen/transaction_tab_container_screen.dart';
import 'package:joshua_s_application1/presentation/transaction_tab_container_screen/binding/transaction_tab_container_binding.dart';
import 'package:joshua_s_application1/presentation/profile_screen/profile_screen.dart';
import 'package:joshua_s_application1/presentation/profile_screen/binding/profile_binding.dart';
import 'package:joshua_s_application1/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:joshua_s_application1/presentation/forgot_password_screen/binding/forgot_password_binding.dart';
import 'package:joshua_s_application1/presentation/home_nine_screen/home_nine_screen.dart';
import 'package:joshua_s_application1/presentation/home_nine_screen/binding/home_nine_binding.dart';
import 'package:joshua_s_application1/presentation/home_eight_screen/home_eight_screen.dart';
import 'package:joshua_s_application1/presentation/home_eight_screen/binding/home_eight_binding.dart';
import 'package:joshua_s_application1/presentation/home_ten_screen/home_ten_screen.dart';
import 'package:joshua_s_application1/presentation/home_ten_screen/binding/home_ten_binding.dart';
import 'package:joshua_s_application1/presentation/frame_nineteen_screen/frame_nineteen_screen.dart';
import 'package:joshua_s_application1/presentation/frame_nineteen_screen/binding/frame_nineteen_binding.dart';
import 'package:joshua_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:joshua_s_application1/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String loginScreen = '/login_screen';

  static const String forgotPasswordOneScreen = '/forgot_password_one_screen';

  static const String splashScreen = '/splash_screen';

  static const String homeScreen = '/home_screen';

  static const String homeTwoScreen = '/home_two_screen';

  static const String homeThreeScreen = '/home_three_screen';

  static const String homeSixScreen = '/home_six_screen';

  static const String homeFourScreen = '/home_four_screen';

  static const String homeSevenScreen = '/home_seven_screen';

  static const String homeOnePage = '/home_one_page';

  static const String homeOneContainerScreen = '/home_one_container_screen';

  static const String homeFiveScreen = '/home_five_screen';

  static const String transactionPage = '/transaction_page';

  static const String transactionTabContainerScreen =
      '/transaction_tab_container_screen';

  static const String transactionTwoPage = '/transaction_two_page';

  static const String transactionOnePage = '/transaction_one_page';

  static const String profileScreen = '/profile_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String homeNineScreen = '/home_nine_screen';

  static const String homeEightScreen = '/home_eight_screen';

  static const String homeTenScreen = '/home_ten_screen';

  static const String frameNineteenScreen = '/frame_nineteen_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: forgotPasswordOneScreen,
      page: () => ForgotPasswordOneScreen(),
      bindings: [
        ForgotPasswordOneBinding(),
      ],
    ),
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
      bindings: [
        HomeBinding(),
      ],
    ),
    GetPage(
      name: homeTwoScreen,
      page: () => HomeTwoScreen(),
      bindings: [
        HomeTwoBinding(),
      ],
    ),
    GetPage(
      name: homeThreeScreen,
      page: () => HomeThreeScreen(),
      bindings: [
        HomeThreeBinding(),
      ],
    ),
    GetPage(
      name: homeSixScreen,
      page: () => HomeSixScreen(),
      bindings: [
        HomeSixBinding(),
      ],
    ),
    GetPage(
      name: homeFourScreen,
      page: () => HomeFourScreen(),
      bindings: [
        HomeFourBinding(),
      ],
    ),
    GetPage(
      name: homeSevenScreen,
      page: () => HomeSevenScreen(),
      bindings: [
        HomeSevenBinding(),
      ],
    ),
    GetPage(
      name: homeOneContainerScreen,
      page: () => HomeOneContainerScreen(),
      bindings: [
        HomeOneContainerBinding(),
      ],
    ),
    GetPage(
      name: homeFiveScreen,
      page: () => HomeFiveScreen(),
      bindings: [
        HomeFiveBinding(),
      ],
    ),
    GetPage(
      name: transactionTabContainerScreen,
      page: () => TransactionTabContainerScreen(),
      bindings: [
        TransactionTabContainerBinding(),
      ],
    ),
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
      bindings: [
        ProfileBinding(),
      ],
    ),
    GetPage(
      name: forgotPasswordScreen,
      page: () => ForgotPasswordScreen(),
      bindings: [
        ForgotPasswordBinding(),
      ],
    ),
    GetPage(
      name: homeNineScreen,
      page: () => HomeNineScreen(),
      bindings: [
        HomeNineBinding(),
      ],
    ),
    GetPage(
      name: homeEightScreen,
      page: () => HomeEightScreen(),
      bindings: [
        HomeEightBinding(),
      ],
    ),
    GetPage(
      name: homeTenScreen,
      page: () => HomeTenScreen(),
      bindings: [
        HomeTenBinding(),
      ],
    ),
    GetPage(
      name: frameNineteenScreen,
      page: () => FrameNineteenScreen(),
      bindings: [
        FrameNineteenBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    )
  ];
}
