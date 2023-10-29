import '../models/usercard_item_model.dart';
import 'package:colorsolo/core/app_export.dart';
import 'package:colorsolo/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UsercardItemWidget extends StatelessWidget {
  UsercardItemWidget(
    this.usercardItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UsercardItemModel usercardItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 5.h,
        vertical: 4.v,
      ),
      decoration: AppDecoration.outlineBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder7,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 1.v),
          Container(
            height: 129.v,
            width: 140.h,
            padding: EdgeInsets.all(9.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadiusStyle.roundedBorder7,
              image: DecorationImage(
                image: AssetImage(
                  ImageConstant.imgFrame33,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: CustomIconButton(
              height: 25.adaptSize,
              width: 24.adaptSize,
              padding: EdgeInsets.all(4.h),
              alignment: Alignment.topRight,
              child: CustomImageView(
                svgPath: ImageConstant.imgFavorite,
              ),
            ),
          ),
          SizedBox(height: 2.v),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 1.v),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      usercardItemModelObj.flowerText!,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyMedium,
                    ),
                    Text(
                      usercardItemModelObj.indoorText!,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 13.h,
                  top: 18.v,
                ),
                child: Text(
                  "lbl_4_9".tr,
                  style: theme.textTheme.bodySmall,
                ),
              ),
              CustomImageView(
                svgPath: ImageConstant.imgStroke2starratings,
                height: 15.adaptSize,
                width: 15.adaptSize,
                margin: EdgeInsets.only(
                  left: 3.h,
                  top: 18.v,
                  bottom: 1.v,
                ),
              ),
            ],
          ),
          SizedBox(height: 4.v),
          Text(
            "lbl_20_99".tr,
            style: theme.textTheme.titleMedium,
          ),
        ],
      ),
    );
  }
}
