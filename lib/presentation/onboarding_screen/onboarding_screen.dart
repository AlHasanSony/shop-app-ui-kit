import 'bloc/onboarding_bloc.dart';
import 'models/onboarding_model.dart';
import 'package:colorsolo/core/app_export.dart';
import 'package:colorsolo/widgets/custom_elevated_button.dart';
import 'package:colorsolo/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardingBloc>(
        create: (context) => OnboardingBloc(
            OnboardingState(onboardingModelObj: OnboardingModel()))
          ..add(OnboardingInitialEvent()),
        child: OnboardingScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<OnboardingBloc, OnboardingState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 5.h, vertical: 16.v),
                  child: Column(children: [
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgClock,
                          height: 24.v,
                          width: 28.h,
                          margin: EdgeInsets.symmetric(vertical: 1.v)),
                      Padding(
                          padding: EdgeInsets.only(left: 5.h),
                          child: Text("lbl_planty".tr,
                              style: theme.textTheme.titleLarge))
                    ]),
                    SizedBox(height: 32.v),
                    CustomImageView(
                        svgPath: ImageConstant.imgImages,
                        height: 311.v,
                        width: 364.h),
                    SizedBox(height: 42.v),
                    Text("msg_welcome_to_planty".tr,
                        style: theme.textTheme.headlineSmall),
                    Container(
                        width: 290.h,
                        margin:
                            EdgeInsets.only(left: 36.h, top: 13.v, right: 36.h),
                        child: Text("msg_browse_through_our".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style:
                                CustomTextStyles.bodyMediumOnPrimaryContainer)),
                    // Padding(
                    //     padding:
                    //         EdgeInsets.only(left: 19.h, top: 60.v, right: 19.h),
                    //     child: Row(
                    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //         children: [
                    //           CustomOutlinedButton(
                    //               width: 150.h, text: "lbl_log_in".tr),
                    //           CustomElevatedButton(
                    //               width: 152.h, text: "lbl_sign_up".tr)
                    //         ])),
                    SizedBox(height: 34.v),
                    Text("msg_terms_of_use_privacy".tr,
                        style: CustomTextStyles.bodyMediumBluegray400),
                    SizedBox(height: 5.v)
                  ]))));
    });
  }
}
