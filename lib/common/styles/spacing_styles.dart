import 'package:flutter/material.dart';
import 'package:shoestore/utils/constants/sizes.dart';

class SpacingStyles {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: CustomSizes.appBarHeight,
    left: CustomSizes.defaultSpace,
    bottom: CustomSizes.defaultSpace,
    right: CustomSizes.defaultSpace,
  );
}
