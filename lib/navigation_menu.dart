import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/features/shop/screens/home.dart';
import 'package:flutter_e_commerce/utils/constants/colors.dart';
import 'package:flutter_e_commerce/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final isDarkMode = THelperFunction.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectionIndex.value,
          onDestinationSelected: (index) =>
              controller.selectionIndex.value = index,
          backgroundColor: isDarkMode ? TColors.black : TColors.white,
          indicatorColor: isDarkMode
              ? TColors.white.withValues(alpha: 0.1)
              : TColors.dark.withValues(alpha: 0.1),
          destinations: const [
            NavigationDestination(
              icon: Icon(Iconsax.home),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.shop),
              label: 'Store',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.heart),
              label: 'Wishlist',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.user),
              label: 'Profile',
            ),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectionIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final RxInt selectionIndex = 0.obs;

  final List<Widget> screens = [
    const Home(),
    Container(color: Colors.yellow),
    Container(color: Colors.green),
    Container(color: Colors.purple),
  ];
}
