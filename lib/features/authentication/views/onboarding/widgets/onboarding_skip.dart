import 'package:flutter/material.dart';
import 'package:shoestore/features/authentication/controller/onboarding/onboarding_controller.dart';
import 'package:shoestore/utils/constants/sizes.dart';
import 'package:shoestore/utils/device/device_utility.dart';

class OnboardingSkip extends StatelessWidget {
  const OnboardingSkip({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: DeviceUtils.getAppBarHeight(),
      right: CustomSizes.defaultSpace,
      child: TextButton(
        onPressed: () => OnboardingController.instance.skipPage(),
        child: const Text('Skip'),
      ),
    );
  }
}
