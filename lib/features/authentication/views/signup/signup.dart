import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/string_extensions.dart';
import 'package:shoestore/common/widgets/login_signup/form_divider.dart';
import 'package:shoestore/common/widgets/login_signup/social_buttons.dart';
import 'package:shoestore/features/authentication/views/signup/widgets/signup_form.dart';
import 'package:shoestore/utils/constants/sizes.dart';
import 'package:shoestore/utils/constants/text_strings.dart';
import 'package:shoestore/utils/helpers/helper_functions.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool dark = HelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(CustomSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                TextStrings.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              const SizedBox(height: CustomSizes.spaceBtwSections),

              // Form
              SignupForm(dark: dark),
              const SizedBox(height: CustomSizes.spaceBtwSections),

              // Divider
              FormDivider(
                dark: dark,
                dividerText: TextStrings.orSignUpWith.capitalize!,
              ),

              const SizedBox(height: CustomSizes.spaceBtwSections),

              // Social Buttons
              SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
