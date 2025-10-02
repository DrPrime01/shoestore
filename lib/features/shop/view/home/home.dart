import 'package:flutter/material.dart';
import 'package:shoestore/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:shoestore/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:shoestore/common/widgets/texts/section_heading.dart';
import 'package:shoestore/features/shop/view/home/widgets/home_appbar.dart';
import 'package:shoestore/features/shop/view/home/widgets/home_categories.dart';
import 'package:shoestore/utils/constants/colors.dart';
import 'package:shoestore/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  // Appbar
                  HomeAppbar(),
                  const SizedBox(height: CustomSizes.spaceBtwSections),

                  // Search container
                  SearchContainer(text: "Search in store"),
                  const SizedBox(height: CustomSizes.spaceBtwSections),

                  // Categories
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: CustomSizes.defaultSpace,
                    ),
                    child: Column(
                      children: [
                        // Heading
                        SectionHeading(
                          headingText: 'Popular Catgories',
                          showActionButton: false,
                          textColor: CustomColors.white,
                        ),
                        const SizedBox(height: CustomSizes.spaceBtwItems),

                        // Categories
                        HomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
