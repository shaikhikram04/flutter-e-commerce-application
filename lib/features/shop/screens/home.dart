import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:flutter_e_commerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:flutter_e_commerce/features/shop/screens/widgets/home_app_bar.dart';
import 'package:flutter_e_commerce/utils/constants/sizes.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  //* AppBar
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),
                  //* SearchBar
                  TSearchContainer(
                    text: 'Search in Store',
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
