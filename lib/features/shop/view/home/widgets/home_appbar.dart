import 'package:flutter/material.dart';
import 'package:shoestore/common/widgets/appbar/appbar.dart';
import 'package:shoestore/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:shoestore/utils/constants/colors.dart';
import 'package:shoestore/utils/constants/text_strings.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppbarWidget(
      title: Column(
        children: [
          Text(
            TextStrings.homeAppbarTitle,
            style: Theme.of(
              context,
            ).textTheme.labelMedium!.apply(color: CustomColors.grey),
          ),
          Text(
            TextStrings.homeAppbarSubTitle,
            style: Theme.of(
              context,
            ).textTheme.headlineSmall!.apply(color: CustomColors.white),
          ),
        ],
      ),
      actions: [
        CartCounterIcon(iconColor: CustomColors.white, onPressed: () {}),
      ],
    );
  }
}
