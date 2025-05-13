import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/common/widgets/app_bar/app_bar.dart';
import 'package:flutter_e_commerce/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:flutter_e_commerce/utils/constants/sizes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //* Header
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  TAppBar(title: Text('Account')),
                  SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),

            //* Body
          ],
        ),
      ),
    );
  }
}
