import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:flutter_e_commerce/common/widgets/images/t_rounded_image.dart';
import 'package:flutter_e_commerce/utils/constants/colors.dart';
import 'package:flutter_e_commerce/utils/constants/image_strings.dart';
import 'package:flutter_e_commerce/utils/constants/sizes.dart';
import 'package:flutter_e_commerce/utils/helpers/helper_functions.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //* Product Image Slider
            TCurvedEdgeWidget(
              child: Container(
                color: dark ? TColors.darkGrey : TColors.light,
                child: Stack(
                  children: [
                    //* Main Large Image
                    const SizedBox(
                      height: 400,
                      child: Padding(
                        padding: EdgeInsets.all(TSizes.productImageRadius * 2),
                        child: Center(child: Image(image: AssetImage(TImages.product63))),
                      ),
                    ),

                    //* Image Slider
                    Positioned(
                      right: 0,
                      bottom: 30,
                      left: TSizes.defaultSpace,
                      child: SizedBox(
                        height: 80,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return TRoundedImage(
                              width: 80,
                              backgroundColor: dark ? TColors.dark : TColors.white,
                              border: Border.all(color: TColors.primary),
                              padding: const EdgeInsets.all(TSizes.sm),
                              imageUrl: TImages.product15,
                            );
                          },
                          separatorBuilder: (_, __) => const SizedBox(width: TSizes.spaceBtwItems),
                          itemCount: 4,
                        ),
                      ),
                    ),

                    
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
