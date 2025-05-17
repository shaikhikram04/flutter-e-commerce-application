import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:flutter_e_commerce/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:flutter_e_commerce/features/shop/screens/product_details/widgets/rating_and_share.dart';
import 'package:flutter_e_commerce/utils/constants/sizes.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //* Product Image Slider
            TProductImageSlider(),

            //* Product Details
            Padding(
              padding: EdgeInsets.only(
                right: TSizes.defaultSpace,
                left: TSizes.defaultSpace,
                bottom: TSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  //* Rating & Sharing
                  TRatingAndShare(),

                  //* Price, title, stock & brand
                  TProductMetaData(),

                  //* Attributes
                  //* Checkout buttons
                  //* Description
                  //* Reviews
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
