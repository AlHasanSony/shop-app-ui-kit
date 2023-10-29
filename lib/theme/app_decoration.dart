import 'package:flutter/material.dart';
import 'package:colorsolo/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBackground => BoxDecoration(
        color: theme.colorScheme.background,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray50,
      );
  static BoxDecoration get fillLightGreen => BoxDecoration(
        color: appTheme.lightGreen500,
      );

  // Outline decorations
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: appTheme.gray50,
        border: Border.all(
          color: appTheme.blueGray400,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBluegray400 => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: appTheme.blueGray400,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineBluegray4001 => BoxDecoration(
        border: Border.all(
          color: appTheme.blueGray400,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBluegray4002 => BoxDecoration(
        color: appTheme.gray50,
        border: Border(
          top: BorderSide(
            color: appTheme.blueGray400,
            width: 1.h,
          ),
        ),
      );
}

class BorderRadiusStyle {
  // Rounded borders
  static BorderRadius get roundedBorder12 => BorderRadius.circular(
        12.h,
      );
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get roundedBorder7 => BorderRadius.circular(
        7.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
