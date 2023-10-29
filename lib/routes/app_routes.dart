import 'package:flutter/material.dart';
import 'package:colorsolo/presentation/onboarding_screen/onboarding_screen.dart';
import 'package:colorsolo/presentation/log_in_screen/log_in_screen.dart';
import 'package:colorsolo/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:colorsolo/presentation/home_container_screen/home_container_screen.dart';
import 'package:colorsolo/presentation/detail_product_screen/detail_product_screen.dart';
import 'package:colorsolo/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String onboardingScreen = '/onboarding_screen';

  static const String logInScreen = '/log_in_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String homePage = '/home_page';

  static const String homeTabContainerPage = '/home_tab_container_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String detailProductScreen = '/detail_product_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        onboardingScreen: OnboardingScreen.builder,
        logInScreen: LogInScreen.builder,
        signUpScreen: SignUpScreen.builder,
        homeContainerScreen: HomeContainerScreen.builder,
        detailProductScreen: DetailProductScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: OnboardingScreen.builder
      };
}
