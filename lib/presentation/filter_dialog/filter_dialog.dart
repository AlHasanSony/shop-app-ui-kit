import 'bloc/filter_bloc.dart';
import 'models/filter_model.dart';
import 'package:colorsolo/core/app_export.dart';
import 'package:colorsolo/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class FilterDialog extends StatelessWidget {
  const FilterDialog({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FilterBloc>(
      create: (context) => FilterBloc(FilterState(
        filterModelObj: FilterModel(),
      ))
        ..add(FilterInitialEvent()),
      child: FilterDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 34.v,
      ),
      child: Column(
        children: [
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(vertical: 23.v),
            decoration: AppDecoration.fillGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder16,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 66.v,
                  width: 327.h,
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 24.h),
                          decoration: AppDecoration.outlineBluegray400,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SizedBox(height: 50.v),
                              CustomImageView(
                                svgPath: ImageConstant.imgArrowright,
                                height: 16.adaptSize,
                                width: 16.adaptSize,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 24.h),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_filter".tr,
                                style: theme.textTheme.bodyMedium,
                              ),
                              SizedBox(height: 1.v),
                              Text(
                                "msg_select_options_to".tr,
                                style: CustomTextStyles.bodyMediumBluegray400,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8.v),
                Container(
                  padding: EdgeInsets.all(24.h),
                  decoration: AppDecoration.outlineBluegray400,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(top: 1.v),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_categories".tr,
                                style: theme.textTheme.bodyMedium,
                              ),
                              SizedBox(height: 6.v),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 8.h,
                                      vertical: 6.v,
                                    ),
                                    decoration:
                                        AppDecoration.fillLightGreen.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder7,
                                    ),
                                    child: Text(
                                      "lbl_indoor".tr,
                                      style:
                                          CustomTextStyles.bodySmallOnPrimary,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 8.h),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 8.h,
                                      vertical: 6.v,
                                    ),
                                    decoration: AppDecoration
                                        .outlineBluegray4001
                                        .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder7,
                                    ),
                                    child: Text(
                                      "lbl_outdoor".tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 8.h),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 8.h,
                                      vertical: 6.v,
                                    ),
                                    decoration: AppDecoration
                                        .outlineBluegray4001
                                        .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder7,
                                    ),
                                    child: Text(
                                      "lbl_office".tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 8.h),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 8.h,
                                      vertical: 6.v,
                                    ),
                                    decoration: AppDecoration
                                        .outlineBluegray4001
                                        .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder7,
                                    ),
                                    child: Text(
                                      "lbl_garden".tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgArrowrightOnprimary,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(
                          left: 4.h,
                          bottom: 45.v,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8.v),
                Container(
                  padding: EdgeInsets.all(24.h),
                  decoration: AppDecoration.outlineBluegray400,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(top: 1.v),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_by_rating".tr,
                                style: theme.textTheme.bodyMedium,
                              ),
                              SizedBox(height: 6.v),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 8.h,
                                      vertical: 5.v,
                                    ),
                                    decoration: AppDecoration
                                        .outlineBluegray4001
                                        .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder7,
                                    ),
                                    child: Text(
                                      "lbl_popular".tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 8.h),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 8.h,
                                      vertical: 6.v,
                                    ),
                                    decoration: AppDecoration
                                        .outlineBluegray4001
                                        .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder7,
                                    ),
                                    child: Text(
                                      "lbl_best_seller".tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 8.h),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 8.h,
                                      vertical: 5.v,
                                    ),
                                    decoration:
                                        AppDecoration.fillLightGreen.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder7,
                                    ),
                                    child: Text(
                                      "lbl_high_quality".tr,
                                      style:
                                          CustomTextStyles.bodySmallOnPrimary,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgArrowrightOnprimary,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(
                          left: 19.h,
                          bottom: 45.v,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 7.v),
                Text(
                  "msg_show_advanced_filter".tr,
                  style: CustomTextStyles.bodySmallOnPrimaryContainer,
                ),
                CustomElevatedButton(
                  height: 48.v,
                  text: "lbl_apply_filters".tr,
                  margin: EdgeInsets.only(
                    left: 38.h,
                    top: 16.v,
                    right: 38.h,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
