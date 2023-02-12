import 'package:demo/core/ui/colors.dart';
import 'package:demo/core/ui/widgets/default_space.dart';
import 'package:flutter/material.dart';

class InformativeCards extends StatelessWidget {
  final String informationValue;
  final String description;
  final bool isSelected;

  const InformativeCards({
    super.key,
    required this.informationValue,
    required this.description,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      decoration: BoxDecoration(
        color: isSelected ? AppColors.green : AppColors.grey,
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            informationValue,
            style: const TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 20,
            ),
          ),
          const DefaultSpace(),
          Text(
            description,
            style: const TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
