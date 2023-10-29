import 'bloc/log_in_bloc.dart';
import 'models/log_in_model.dart';
import 'package:colorsolo/core/app_export.dart';
import 'package:colorsolo/core/utils/validation_functions.dart';
import 'package:colorsolo/widgets/app_bar/appbar_image.dart';
import 'package:colorsolo/widgets/app_bar/appbar_title.dart';
import 'package:colorsolo/widgets/app_bar/custom_app_bar.dart';
import 'package:colorsolo/widgets/custom_elevated_button.dart';
import 'package:colorsolo/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:colorsolo/domain/googleauth/google_auth_helper.dart';
import 'package:colorsolo/domain/facebookauth/facebook_auth_helper.dart';

// ignore_for_file: must_be_immutable
class LogInScreen extends StatelessWidget {
  LogInScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<LogInBloc>(
        create: (context) => LogInBloc(LogInState(logInModelObj: LogInModel()))
          ..add(LogInInitialEvent()),
        child: LogInScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                leadingWidth: 48.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleft,
                    margin:
                        EdgeInsets.only(left: 24.h, top: 12.v, bottom: 19.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_log_in2".tr)),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 24.h, vertical: 8.v),
                    child: Column(children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("lbl_email".tr,
                                style: CustomTextStyles.bodyMediumBluegray400),
                            BlocSelector<LogInBloc, LogInState,
                                    TextEditingController?>(
                                selector: (state) => state.emailController,
                                builder: (context, emailController) {
                                  return CustomTextFormField(
                                      controller: emailController,
                                      hintText: "msg_miniproject_gmail_com".tr,
                                      textInputType: TextInputType.emailAddress,
                                      validator: (value) {
                                        if (value == null ||
                                            (!isValidEmail(value,
                                                isRequired: true))) {
                                          return "Please enter valid email";
                                        }
                                        return null;
                                      });
                                })
                          ]),
                      SizedBox(height: 15.v),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("lbl_password".tr,
                                style: CustomTextStyles.bodyMediumBluegray400),
                            BlocBuilder<LogInBloc, LogInState>(
                                builder: (context, state) {
                              return CustomTextFormField(
                                  controller: state.passwordController,
                                  hintText: "lbl".tr,
                                  textInputAction: TextInputAction.done,
                                  textInputType: TextInputType.visiblePassword,
                                  suffix: InkWell(
                                      onTap: () {
                                        context.read<LogInBloc>().add(
                                            ChangePasswordVisibilityEvent(
                                                value: !state.isShowPassword));
                                      },
                                      child: Container(
                                          margin: EdgeInsets.only(
                                              left: 30.h,
                                              top: 18.v,
                                              bottom: 18.v),
                                          child: CustomImageView(
                                              svgPath: state.isShowPassword
                                                  ? ImageConstant.imgCall
                                                  : ImageConstant.imgCall))),
                                  suffixConstraints:
                                      BoxConstraints(maxHeight: 52.v),
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidPassword(value,
                                            isRequired: true))) {
                                      return "Please enter valid password";
                                    }
                                    return null;
                                  },
                                  obscureText: state.isShowPassword);
                            })
                          ]),
                      SizedBox(height: 32.v),
                      CustomElevatedButton(text: "lbl_log_in2".tr),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 31.h, top: 25.v, right: 31.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(
                                        top: 10.v, bottom: 12.v),
                                    child: SizedBox(
                                        width: 116.h, child: Divider())),
                                Padding(
                                    padding: EdgeInsets.only(left: 8.h),
                                    child: Text("lbl_or".tr,
                                        style: CustomTextStyles
                                            .titleMediumBluegray400)),
                                Padding(
                                    padding: EdgeInsets.only(
                                        top: 10.v, bottom: 12.v),
                                    child: SizedBox(
                                        width: 124.h,
                                        child: Divider(indent: 8.h)))
                              ])),
                      SizedBox(height: 22.v),
                      CustomElevatedButton(
                          text: "msg_log_in_with_google".tr,
                          leftIcon: Container(
                              margin: EdgeInsets.only(right: 4.h),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6.h)),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgGoogle)),
                          buttonStyle: CustomButtonStyles.fillGray,
                          buttonTextStyle: theme.textTheme.bodyMedium!,
                          onTap: () {
                            onTapLoginwith(context);
                          }),
                      SizedBox(height: 16.v),
                      CustomElevatedButton(
                          text: "msg_log_in_with_facebook".tr,
                          leftIcon: Container(
                              padding:
                                  EdgeInsets.fromLTRB(11.h, 8.v, 11.h, 7.v),
                              margin: EdgeInsets.only(right: 4.h),
                              decoration: BoxDecoration(
                                  color: theme.colorScheme.primary,
                                  borderRadius: BorderRadius.circular(16.h)),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgFacebook)),
                          buttonStyle: CustomButtonStyles.fillPrimary,
                          buttonTextStyle: CustomTextStyles.bodyMediumGray50,
                          onTap: () {
                            onTapLoginwith1(context);
                          }),
                      SizedBox(height: 17.v),
                      Text("msg_forgot_password".tr,
                          style: CustomTextStyles.bodyMediumOnPrimaryContainer),
                      SizedBox(height: 5.v)
                    ])))));
  }

  /// Navigates to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is
  /// used to build the navigation stack. When the action is triggered, this
  /// function uses the [NavigatorService] to navigate to the previous screen
  /// in the navigation stack.
  onTapArrowleftone(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Performs a Google sign-in and returns a [GoogleUser] object.
  ///
  /// If the sign-in is successful, the [onSuccess] callback will be called with
  /// a TODO comment needed to be modified by you.
  /// If the sign-in fails, the [onError] callback will be called with the error message.
  ///
  /// Throws an exception if the Google sign-in process fails.
  onTapLoginwith(BuildContext context) async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text('user data is empty')));
      }
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }

  /// Performs a Facebook sign-in and returns a [FacebookUser] object.
  ///
  /// If the sign-in is successful, the [onSuccess] callback will be called with
  /// a TODO comment needed to be modified by you.
  /// If the sign-in fails, the [onError] callback will be called with the error message.
  ///
  /// Throws an exception if the Facebook sign-in process fails.
  onTapLoginwith1(BuildContext context) async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }
}
