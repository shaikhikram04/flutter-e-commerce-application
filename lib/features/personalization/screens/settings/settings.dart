import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/common/widgets/app_bar/app_bar.dart';
import 'package:flutter_e_commerce/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:flutter_e_commerce/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:flutter_e_commerce/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:flutter_e_commerce/common/widgets/text/section_heading.dart';
import 'package:flutter_e_commerce/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //* Header
            const TPrimaryHeaderContainer(
              child: Column(
                children: [
                  TAppBar(title: Text('Account')),

                  //* User profile card
                  TUserProfileTile(),
                  SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),

            //* Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  //* Title
                  const TSectionHeading(title: 'Account Settings', showActionButton: false),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  const TSettingsMenuTile(
                    title: 'My Address',
                    subtitle: 'Set shopping delivery address',
                    icon: Iconsax.safe_home,
                  ),
                  const TSettingsMenuTile(
                    title: 'My Cart',
                    subtitle: 'Add, remove products and move to checkout',
                    icon: Iconsax.shopping_cart,
                  ),
                  const TSettingsMenuTile(
                    title: 'My Order',
                    subtitle: 'In-progress and Completed Order',
                    icon: Iconsax.bag_tick,
                  ),
                  const TSettingsMenuTile(
                      title: 'Bank Account',
                      subtitle: 'Withdraw ballance to register bank account',
                      icon: Iconsax.bank),
                  const TSettingsMenuTile(
                    title: 'My Coupons',
                    subtitle: 'List of all discounted coupons',
                    icon: Iconsax.discount_shape,
                  ),
                  const TSettingsMenuTile(
                    title: 'Notifications',
                    subtitle: 'See all kinds of notification message',
                    icon: Iconsax.notification,
                  ),
                  const TSettingsMenuTile(
                    title: 'Account Privacy',
                    subtitle: 'Manage data usage and connected accounts',
                    icon: Iconsax.security_card,
                  ),

                  //* App Settings
                  const SizedBox(height: TSizes.spaceBtwSections),
                  const TSectionHeading(title: 'App Settings', showActionButton: false),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  const TSettingsMenuTile(
                    title: 'Load Data',
                    subtitle: 'Upload data to your cloud database',
                    icon: Iconsax.security_card,
                  ),
                  TSettingsMenuTile(
                    title: 'Geolocation',
                    subtitle: 'Set recommendation based on location',
                    icon: Iconsax.location,
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  TSettingsMenuTile(
                    title: 'Safe Mode',
                    subtitle: 'Search result is safe for all ages',
                    icon: Iconsax.security_user,
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  TSettingsMenuTile(
                    title: 'HD Image Quality',
                    subtitle: 'Set image quality to be seen',
                    icon: Iconsax.image,
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),

                  //* Logout buttons
                  const SizedBox(height: TSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: () {}, child: const Text('Logout')),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections * 2),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
