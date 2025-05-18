import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/common/widgets/custom_shapes/containers/circular_containers.dart';
import 'package:flutter_e_commerce/utils/constants/colors.dart';
import 'package:flutter_e_commerce/utils/helpers/helper_functions.dart';

class TChoiceChip extends StatelessWidget {
  const TChoiceChip({
    super.key,
    required this.text,
    required this.isSelected,
    this.onSelected,
  });

  final String text;
  final bool isSelected;
  final void Function(bool value)? onSelected;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: THelperFunction.getColor(text) != null ? const SizedBox() :  Text(text),
      selected: isSelected,
      onSelected: onSelected,
      labelStyle: TextStyle(color: isSelected ? TColors.white : null),
      avatar: THelperFunction.getColor(text) != null
          ? TCircularContainer(width: 50, height: 50, backgroundColor: THelperFunction.getColor(text)!)
          : null,
      shape: THelperFunction.getColor(text) != null ? const CircleBorder() : null,
      labelPadding: THelperFunction.getColor(text) != null ? EdgeInsets.zero : null,
      padding: THelperFunction.getColor(text) != null ? EdgeInsets.zero : null,
      backgroundColor: THelperFunction.getColor(text),
      selectedColor: THelperFunction.getColor(text),
    );
  }
}
