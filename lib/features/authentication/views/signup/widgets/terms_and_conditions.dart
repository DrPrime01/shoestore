import 'package:flutter/material.dart';
import 'package:shoestore/utils/constants/colors.dart';
import 'package:shoestore/utils/constants/sizes.dart';
import 'package:shoestore/utils/constants/text_strings.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key, required this.dark});

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(value: true, onChanged: (value) {}),
        ),
        const SizedBox(width: CustomSizes.spaceBtwItems),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '${TextStrings.iAgreeTo} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: '${TextStrings.privacyPolicy} ',
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? CustomColors.white : CustomColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark
                      ? CustomColors.white
                      : CustomColors.primary,
                ),
              ),
              TextSpan(
                text: 'and ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: '${TextStrings.termsOfUse} ',
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? CustomColors.white : CustomColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark
                      ? CustomColors.white
                      : CustomColors.primary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
