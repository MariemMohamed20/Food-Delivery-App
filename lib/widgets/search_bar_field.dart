import 'package:flutter/material.dart';
import '../core/core.dart';

class SearchBarField extends StatelessWidget {
  final TextEditingController controller;

  const SearchBarField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      margin: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: AppColors.scaffold,
        border: Border.all(color: AppColors.divider),
        borderRadius: BorderRadius.circular(28),
      ),
      child: Row(children: [
        const SizedBox(width: 16),
        Expanded(
          child: TextField(
            controller: controller,
            style: AppTextStyles.fieldInput,
            decoration: const InputDecoration(
              hintText: Strings.search,
              hintStyle: TextStyle(color: AppColors.textLight, fontSize: 13),
              border: InputBorder.none,
              isDense: true,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(5),
          width: 36, height: 36,
          decoration: BoxDecoration(color: AppColors.primary, shape: BoxShape.circle),
          child: const Icon(Icons.tune_rounded, color: AppColors.white, size: 18),
        ),
      ]),
    );
  }
}
