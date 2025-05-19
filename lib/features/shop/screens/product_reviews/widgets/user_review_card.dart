import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_e_commerce/common/widgets/products/ratings/rating_indicator.dart';
import 'package:flutter_e_commerce/utils/constants/colors.dart';
import 'package:flutter_e_commerce/utils/constants/image_strings.dart';
import 'package:flutter_e_commerce/utils/constants/sizes.dart';
import 'package:flutter_e_commerce/utils/helpers/helper_functions.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(backgroundImage: AssetImage(TImages.userProfileImage1)),
                const SizedBox(width: TSizes.spaceBtwItems),
                Text('John Doe', style: Theme.of(context).textTheme.titleLarge),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
        ),

        //* Review
        Row(children: [
          const TRatingBarIndicator(rating: 4),
          const SizedBox(width: TSizes.spaceBtwItems),
          Text('01 Nov, 2024', style: Theme.of(context).textTheme.bodyMedium),
        ]),
        const SizedBox(height: TSizes.spaceBtwItems),
        ReadMoreText(
          'The user interface is very user-friendly and easy to navigate. I love the design and the overall experience of using this app. Highly recommend it to everyone!',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimCollapsedText: ' Show more',
          trimExpandedText: ' Show less',
          style: Theme.of(context).textTheme.bodyMedium,
          moreStyle: const TextStyle(color: TColors.primary, fontSize: 14, fontWeight: FontWeight.bold),
          lessStyle: const TextStyle(color: TColors.primary, fontSize: 14, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),

        //* Compare review
        TRoundedContainer(
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          padding: const EdgeInsets.all(TSizes.md),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("T's Store", style: Theme.of(context).textTheme.titleMedium),
                  Text('02 Nov, 2024', style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              ReadMoreText(
                'The user interface is very user-friendly and easy to navigate. I love the design and the overall experience of using this app. Highly recommend it to everyone!',
                trimLines: 2,
                trimMode: TrimMode.Line,
                trimCollapsedText: ' Show more',
                trimExpandedText: ' Show less',
                style: Theme.of(context).textTheme.bodyMedium,
                moreStyle: const TextStyle(color: TColors.primary, fontSize: 14, fontWeight: FontWeight.bold),
                lessStyle: const TextStyle(color: TColors.primary, fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwSections),
      ],
    );
  }
}
