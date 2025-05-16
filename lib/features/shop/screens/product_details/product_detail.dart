import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';

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

            
          ],
        ),
      ),
    );
  }
}
