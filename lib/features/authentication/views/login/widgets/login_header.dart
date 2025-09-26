import 'package:flutter/material.dart';
import 'package:shoestore/utils/constants/image_strings.dart';
import 'package:shoestore/utils/constants/sizes.dart';
import 'package:shoestore/utils/constants/text_strings.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key, required this.dark});

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(
            dark ? CustomImages.lightAppLogo : CustomImages.darkAppLogo,
          ),
        ),
        Text(
          TextStrings.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: CustomSizes.sm),
        Text(
          TextStrings.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
