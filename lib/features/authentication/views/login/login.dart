import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoestore/common/styles/spacing_styles.dart';
import 'package:shoestore/common/widgets/login_signup/form_divider.dart';
import 'package:shoestore/common/widgets/login_signup/social_buttons.dart';
import 'package:shoestore/features/authentication/views/login/widgets/login_form.dart';
import 'package:shoestore/features/authentication/views/login/widgets/login_header.dart';
import 'package:shoestore/utils/constants/sizes.dart';
import 'package:shoestore/utils/constants/text_strings.dart';
import 'package:shoestore/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SpacingStyles.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Logo, Title, and Subtitle
              LoginHeader(dark: dark),

              // Form
              LoginForm(),

              // Divider
              FormDivider(
                dark: dark,
                dividerText: TextStrings.orSignInWith.capitalize!,
              ),
              const SizedBox(height: CustomSizes.spaceBtwSections),

              // Footer
              SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
