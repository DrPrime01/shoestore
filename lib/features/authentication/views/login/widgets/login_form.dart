import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/utils.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoestore/features/authentication/views/password_configuration/forgot_password.dart';
import 'package:shoestore/features/authentication/views/signup/signup.dart';
import 'package:shoestore/navigation_menu.dart';
import 'package:shoestore/utils/constants/sizes.dart';
import 'package:shoestore/utils/constants/text_strings.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: CustomSizes.spaceBtwSections,
        ),
        child: Column(
          children: [
            // Email
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: TextStrings.email,
              ),
            ),

            const SizedBox(height: CustomSizes.spaceBtwInputFields),

            // Password
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: TextStrings.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),

            const SizedBox(height: CustomSizes.spaceBtwInputFields / 2),

            // Remember me and forget password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Remember me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(TextStrings.rememberMe),
                  ],
                ),

                // Forget password
                TextButton(
                  onPressed: () => Get.to(() => const ForgotPasswordScreen()),
                  child: const Text(TextStrings.forgetPassword),
                ),
              ],
            ),

            const SizedBox(height: CustomSizes.spaceBtwSections),

            // Sign in button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => NavigationMenu()),
                child: const Text(TextStrings.signIn),
              ),
            ),

            const SizedBox(height: CustomSizes.spaceBtwItems),

            // Create account Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  Get.to(() => const SignupScreen());
                },
                child: const Text(TextStrings.createAccount),
              ),
            ),

            const SizedBox(height: CustomSizes.spaceBtwSections),
          ],
        ),
      ),
    );
  }
}
