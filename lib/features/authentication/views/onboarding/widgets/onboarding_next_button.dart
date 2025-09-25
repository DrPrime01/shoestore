import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoestore/features/authentication/controller/onboarding/onboarding_controller.dart';
import 'package:shoestore/utils/constants/colors.dart';
import 'package:shoestore/utils/constants/sizes.dart';
import 'package:shoestore/utils/device/device_utility.dart';
import 'package:shoestore/utils/helpers/helper_functions.dart';

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({super.key});

  @override
  Widget build(BuildContext context) {
    final bool dark = HelperFunctions.isDarkMode(context);

    return Positioned(
      right: CustomSizes.defaultSpace,
      bottom: DeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnboardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          backgroundColor: dark ? CustomColors.primary : CustomColors.black,
        ),
        child: Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
