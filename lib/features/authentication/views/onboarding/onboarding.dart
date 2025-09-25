import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoestore/features/authentication/controller/onboarding/onboarding_controller.dart'
    show OnboardingController;
import 'package:shoestore/features/authentication/views/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:shoestore/features/authentication/views/onboarding/widgets/onboarding_next_button.dart';
import 'package:shoestore/features/authentication/views/onboarding/widgets/onboarding_page.dart';
import 'package:shoestore/features/authentication/views/onboarding/widgets/onboarding_skip.dart';
import 'package:shoestore/utils/constants/image_strings.dart';
import 'package:shoestore/utils/constants/text_strings.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Scaffold(
      body: Stack(
        children: [
          // Horizontal scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnboardingPage(
                image: CustomImages.onboardingImage1,
                title: TextStrings.onBoardingTitle1,
                subTitle: TextStrings.onBoardingSubTitle1,
              ),
              OnboardingPage(
                image: CustomImages.onboardingImage2,
                title: TextStrings.onBoardingTitle2,
                subTitle: TextStrings.onBoardingSubTitle2,
              ),
              OnboardingPage(
                image: CustomImages.onboardingImage3,
                title: TextStrings.onBoardingTitle3,
                subTitle: TextStrings.onBoardingSubTitle3,
              ),
            ],
          ),

          // Skip button
          OnboardingSkip(),

          // Dot Navigation SmoothPageIndicator
          OnboardingDotNavigation(),

          // Circular Button
          OnboardingNextButton(),
        ],
      ),
    );
  }
}
