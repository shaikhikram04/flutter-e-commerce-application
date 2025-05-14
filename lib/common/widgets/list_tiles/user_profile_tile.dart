import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/common/widgets/images/t_circular_image.dart';
import 'package:flutter_e_commerce/utils/constants/colors.dart';
import 'package:flutter_e_commerce/utils/constants/image_strings.dart';
import 'package:iconsax/iconsax.dart';

class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const TCircularImage(image: TImages.user, height: 50, width: 50, padding: 0, overlayColor: null),
      title: Text('Ikram Shaikh', style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.white)),
      subtitle:
          Text('support@ikramshaikh.com', style: Theme.of(context).textTheme.bodyMedium!.apply(color: TColors.white)),
      trailing: IconButton(onPressed: () {}, icon: const Icon(Iconsax.edit, color: TColors.white)),
    );
  }
}
