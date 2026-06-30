import 'package:flutter/material.dart';
import '../core/core.dart';

class ChipGroup extends StatelessWidget {
  final List<String> chips;
  final int selected;
  final ValueChanged<int> onChanged;

  const ChipGroup({super.key, required this.chips, required this.selected, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(chips.length, (i) => Padding(
        padding: const EdgeInsets.only(right: 8),
        child: GestureDetector(
          onTap: () => onChanged(i),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 180),
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 9),
            decoration: BoxDecoration(
              color: selected == i ? AppColors.primary : Colors.transparent,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: AppColors.primary, width: 1.5),
            ),
            child: Text(chips[i], style: selected == i ? AppTextStyles.chipActive : AppTextStyles.chipInact),
          ),
        ),
      )),
    );
  }
}
