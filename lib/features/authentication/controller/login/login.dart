import 'package:flutter/material.dart';
import 'package:shoestore/common/styles/spacing_styles.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SpacingStyles.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Logo, Title, and Subtitle
            ],
          ),
        ),
      ),
    );
  }
}
