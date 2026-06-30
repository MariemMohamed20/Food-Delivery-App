import 'package:flutter/material.dart';
import '../core/core.dart';

class AmberHeader extends StatelessWidget {
  final String title;
  final String? subtitle;

  const AmberHeader({super.key, required this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.amber,
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
      child: Column(children: [
        Align(
          alignment: Alignment.centerLeft,
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(Icons.chevron_left_rounded, color: AppColors.primary, size: 28),
          ),
        ),
        Text(title, style: AppTextStyles.headerTitle),
        if (subtitle != null) ...[
          const SizedBox(height: 4),
          Text(subtitle!, style: AppTextStyles.headerSub),
        ],
      ]),
    );
  }
}
