import '../models/banner_item_model.dart';
import 'package:colorsolo/core/app_export.dart';
import 'package:colorsolo/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BannerItemWidget extends StatelessWidget {
  BannerItemWidget(
    this.bannerItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  BannerItemModel bannerItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 18.v,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadiusStyle.roundedBorder16,
          image: DecorationImage(
            image: AssetImage(
              ImageConstant.imgBanner,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "msg_keep_your_room_aesthetic".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.titleMedium,
            ),
            SizedBox(height: 13.v),
            CustomElevatedButton(
              height: 33.v,
              width: 76.h,
              text: "lbl_up_to_15".tr,
              buttonTextStyle: CustomTextStyles.bodySmallOnPrimary,
            ),
            SizedBox(height: 37.v),
          ],
        ),
      ),
    );
  }
}
