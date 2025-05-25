import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/common/widgets/app_bar/app_bar.dart';
import 'package:flutter_e_commerce/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(showBackArrow: true, title: Text('Add New Address')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Form(
          child: Column(
            children: [
              TextFormField(decoration: const InputDecoration(prefix: Icon(Iconsax.user), labelText: 'Name')),
              const SizedBox(height: TSizes.spaceBtwInputFields),
              TextFormField(decoration: const InputDecoration(prefix: Icon(Iconsax.mobile), labelText: 'Phone Number')),
              const SizedBox(height: TSizes.spaceBtwInputFields),
              Row(
                spacing: TSizes.spaceBtwInputFields,
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(prefix: Icon(Iconsax.building_31), labelText: 'Street'),
                    ),
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(prefix: Icon(Iconsax.code), labelText: 'Postal Code'),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: TSizes.spaceBtwInputFields),
              Row(
                spacing: TSizes.spaceBtwInputFields,
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(prefix: Icon(Iconsax.building), labelText: 'City'),
                    ),
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(prefix: Icon(Iconsax.activity), labelText: 'State'),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: TSizes.spaceBtwInputFields),
              TextFormField(decoration: const InputDecoration(prefix: Icon(Iconsax.global), labelText: 'Country')),
              const SizedBox(height: TSizes.defaultSpace),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Save'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
