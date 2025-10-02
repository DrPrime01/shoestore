import 'package:flutter/material.dart';
import 'package:shoestore/utils/constants/colors.dart';
import 'package:shoestore/utils/constants/sizes.dart';
import 'package:shoestore/utils/helpers/helper_functions.dart';

class VerticalImageText extends StatelessWidget {
  const VerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = CustomColors.white,
    this.backgroundColor = CustomColors.white,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final bool dark = HelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(right: CustomSizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
              width: 56.0,
              height: 56.0,
              padding: EdgeInsets.all(CustomSizes.sm),
              decoration: BoxDecoration(
                color:
                    backgroundColor ??
                    (dark ? CustomColors.black : CustomColors.white),
                borderRadius: BorderRadius.circular(56.0),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: dark ? CustomColors.light : CustomColors.dark,
                ),
              ),
            ),
            const SizedBox(height: CustomSizes.spaceBtwItems / 2),

            // Text
            SizedBox(
              width: 55.0,
              child: Text(
                title,
                style: Theme.of(
                  context,
                ).textTheme.labelMedium!.apply(color: textColor),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
