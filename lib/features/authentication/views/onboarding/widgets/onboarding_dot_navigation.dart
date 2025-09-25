import 'package:flutter/material.dart';
import 'package:shoestore/features/authentication/controller/onboarding/onboarding_controller.dart';
import 'package:shoestore/utils/constants/colors.dart';
import 'package:shoestore/utils/constants/sizes.dart';
import 'package:shoestore/utils/device/device_utility.dart';
import 'package:shoestore/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingDotNavigation extends StatelessWidget {
  const OnboardingDotNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    final dark = HelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: DeviceUtils.getBottomNavigationBarHeight() + 100,
      left: CustomSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? CustomColors.light : CustomColors.dark,
          dotHeight: 6,
        ),
      ),
    );
  }
}
