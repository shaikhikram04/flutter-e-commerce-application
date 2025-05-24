import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/common/widgets/app_bar/app_bar.dart';
import 'package:flutter_e_commerce/common/widgets/products/ratings/rating_indicator.dart';
import 'package:flutter_e_commerce/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:flutter_e_commerce/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:flutter_e_commerce/utils/constants/sizes.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //* App Bar
      appBar: const TAppBar(title: Text('Reviews & Ratings')),

      //* Body
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
                'Ratings and reviews are verified and are from people who use the same type of device that you use.'),
            const SizedBox(height: TSizes.spaceBtwItems),

            //* Overall Rating
            const TOverallProductRating(),
            const TRatingBarIndicator(rating: 4.5),
            Text('12,611', style: Theme.of(context).textTheme.bodySmall),
            const SizedBox(height: TSizes.spaceBtwSections),

            //* User Reviews List
            const UserReviewCard(),
            const UserReviewCard(),
            const UserReviewCard(),
            const UserReviewCard(),
          ],
        ),
      ),
    );
  }
}

