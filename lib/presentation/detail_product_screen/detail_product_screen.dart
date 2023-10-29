import 'bloc/detail_product_bloc.dart';
import 'models/detail_product_model.dart';
import 'package:colorsolo/core/app_export.dart';
import 'package:colorsolo/widgets/app_bar/appbar_image.dart';
import 'package:colorsolo/widgets/app_bar/appbar_image_1.dart';
import 'package:colorsolo/widgets/app_bar/custom_app_bar.dart';
import 'package:colorsolo/widgets/custom_elevated_button.dart';
import 'package:colorsolo/widgets/custom_icon_button.dart';
import 'package:colorsolo/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class DetailProductScreen extends StatelessWidget {
  const DetailProductScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<DetailProductBloc>(
        create: (context) => DetailProductBloc(
            DetailProductState(detailProductModelObj: DetailProductModel()))
          ..add(DetailProductInitialEvent()),
        child: DetailProductScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<DetailProductBloc, DetailProductState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(children: [
                    SizedBox(
                        height: 346.v,
                        width: double.maxFinite,
                        child: Stack(alignment: Alignment.center, children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgRectangle58,
                              height: 346.v,
                              width: 375.h,
                              alignment: Alignment.center),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 24.h),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomAppBar(
                                            height: 24.v,
                                            leadingWidth: 48.h,
                                            leading: AppbarImage(
                                                svgPath:
                                                    ImageConstant.imgArrowleft,
                                                margin:
                                                    EdgeInsets.only(left: 24.h),
                                                onTap: () {
                                                  onTapArrowleftone(context);
                                                }),
                                            actions: [
                                              AppbarImage1(
                                                  svgPath: ImageConstant
                                                      .imgSearchOnprimary,
                                                  margin: EdgeInsets.only(
                                                      left: 24.h)),
                                              AppbarImage1(
                                                  svgPath: ImageConstant
                                                      .imgShoppingcart,
                                                  margin: EdgeInsets.only(
                                                      left: 16.h)),
                                              AppbarImage1(
                                                  svgPath:
                                                      ImageConstant.imgShare2,
                                                  margin: EdgeInsets.only(
                                                      left: 16.h, right: 24.h))
                                            ]),
                                        SizedBox(height: 252.v),
                                        CustomElevatedButton(
                                            height: 30.v,
                                            width: 38.h,
                                            text: "lbl_1_5".tr,
                                            buttonStyle:
                                                CustomButtonStyles.fillGrayTL4,
                                            buttonTextStyle: CustomTextStyles
                                                .bodySmallOnPrimary)
                                      ])))
                        ])),
                    Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 23.h, vertical: 16.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 1.h),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(
                                                top: 2.v, bottom: 3.v),
                                            child: Text("lbl_20_99".tr,
                                                style: theme
                                                    .textTheme.headlineLarge)),
                                        CustomIconButton(
                                            height: 54.adaptSize,
                                            width: 54.adaptSize,
                                            padding: EdgeInsets.all(10.h),
                                            decoration: IconButtonStyleHelper
                                                .fillGrayTL27,
                                            child: CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgFavorite))
                                      ])),
                              Padding(
                                  padding: EdgeInsets.only(left: 1.h, top: 4.v),
                                  child: Text("msg_cactus_indoor".tr,
                                      style: theme.textTheme.bodyMedium)),
                              Padding(
                                  padding: EdgeInsets.only(left: 1.h, top: 7.v),
                                  child: Row(children: [
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: 8.v, bottom: 9.v),
                                        child: Text("lbl_sold_1k".tr,
                                            style: CustomTextStyles
                                                .bodySmallOnPrimary)),
                                    Container(
                                        width: 84.h,
                                        margin: EdgeInsets.only(left: 8.h),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 4.h, vertical: 6.v),
                                        decoration: AppDecoration
                                            .outlineBluegray4001
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder7),
                                        child: Row(children: [
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgStroke2starratings,
                                              height: 24.adaptSize,
                                              width: 24.adaptSize),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 4.h,
                                                  top: 2.v,
                                                  bottom: 3.v),
                                              child: Text("lbl_4_5".tr,
                                                  style: CustomTextStyles
                                                      .bodySmallOnPrimary)),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 4.h,
                                                  top: 2.v,
                                                  bottom: 3.v),
                                              child: Text("lbl_50".tr,
                                                  style: theme
                                                      .textTheme.bodySmall))
                                        ]))
                                  ])),
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 1.h, top: 19.v),
                                  child: Text("lbl_detail_product".tr,
                                      style: CustomTextStyles.titleMediumBold)),
                              Container(
                                  margin: EdgeInsets.only(left: 1.h, top: 8.v),
                                  padding: EdgeInsets.symmetric(vertical: 7.v),
                                  decoration: AppDecoration.outlineBluegray400,
                                  child: Row(children: [
                                    Padding(
                                        padding: EdgeInsets.only(bottom: 1.v),
                                        child: Text("lbl_condition".tr,
                                            style: CustomTextStyles
                                                .bodyMediumOnPrimaryContainer)),
                                    Padding(
                                        padding: EdgeInsets.only(bottom: 1.v),
                                        child: Text("lbl_new".tr,
                                            style: theme.textTheme.bodyMedium))
                                  ])),
                              Container(
                                  margin: EdgeInsets.only(left: 1.h, top: 8.v),
                                  padding: EdgeInsets.symmetric(vertical: 7.v),
                                  decoration: AppDecoration.outlineBluegray400,
                                  child: Row(children: [
                                    Padding(
                                        padding: EdgeInsets.only(bottom: 1.v),
                                        child: Text("lbl_min_ordered".tr,
                                            style: CustomTextStyles
                                                .bodyMediumOnPrimaryContainer)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 88.h, bottom: 1.v),
                                        child: Text("lbl_1_item".tr,
                                            style: theme.textTheme.bodyMedium))
                                  ])),
                              Container(
                                  margin: EdgeInsets.only(
                                      left: 1.h, top: 8.v, bottom: 5.v),
                                  padding: EdgeInsets.symmetric(vertical: 7.v),
                                  decoration: AppDecoration.outlineBluegray400,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(top: 1.v),
                                            child: Text("lbl_display_case".tr,
                                                style: CustomTextStyles
                                                    .bodyMediumOnPrimaryContainer)),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                top: 1.v, right: 60.h),
                                            child: Text("lbl_display_case".tr,
                                                style:
                                                    theme.textTheme.bodyMedium))
                                      ]))
                            ]))
                  ])),
              bottomNavigationBar: Container(
                  margin:
                      EdgeInsets.only(left: 24.h, right: 24.h, bottom: 28.v),
                  decoration: AppDecoration.outlineBluegray4002,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomOutlinedButton(
                            height: 34.v,
                            width: 152.h,
                            text: "lbl_buy_now".tr,
                            margin: EdgeInsets.symmetric(vertical: 1.v),
                            buttonTextStyle: theme.textTheme.labelLarge!),
                        CustomElevatedButton(
                            height: 36.v,
                            width: 151.h,
                            text: "lbl_add_to_chart".tr,
                            margin: EdgeInsets.only(left: 24.h),
                            leftIcon: Container(
                                margin: EdgeInsets.only(right: 10.h),
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgStroke2Addplus)),
                            buttonTextStyle:
                                CustomTextStyles.labelLargeBlack900)
                      ]))));
    });
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
}
