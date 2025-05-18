import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/common/widgets/text/section_heading.dart';
import 'package:flutter_e_commerce/features/shop/screens/product_details/widgets/bottom_add_to_cart.dart';
import 'package:flutter_e_commerce/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:flutter_e_commerce/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:flutter_e_commerce/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:flutter_e_commerce/features/shop/screens/product_details/widgets/rating_and_share.dart';
import 'package:flutter_e_commerce/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //* Product Image Slider
            const TProductImageSlider(),

            //* Product Details
            Padding(
              padding: const EdgeInsets.only(
                right: TSizes.defaultSpace,
                left: TSizes.defaultSpace,
                bottom: TSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  //* Rating & Sharing
                  const TRatingAndShare(),

                  //* Price, title, stock & brand
                  const TProductMetaData(),

                  //* Attributes
                  const TProductAttributes(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  //* Checkout buttons
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(onPressed: () {}, child: const Text('Checkout')),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  //* Description
                  const TSectionHeading(title: 'Description', showActionButton: false),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  const ReadMoreText(
                    'This is a description of the product. It is a very long description that goes well. This is a description of the product. It is a very long description that goes well. This is a description of the product. It is a very long description that goes well. This is a description of the product. It is a very long description that goes well. This is a description of the product. It is a very long description that goes well.',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: ' Show more',
                    trimExpandedText: ' Show less',
                    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  //* Reviews
                  const Divider(),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TSectionHeading(title: 'Reviews(199)', showActionButton: false),
                      IconButton(onPressed: () {}, icon: const Icon(Iconsax.arrow_right_3, size: 18)),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
