import 'package:flutter/material.dart';
import '../core/core.dart';

class SettingsExpansionTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final Widget child;

  const SettingsExpansionTile({
    super.key,
    required this.icon,
    required this.label,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          tilePadding: EdgeInsets.zero,
          childrenPadding: const EdgeInsets.only(bottom: 16),
          trailing: const Icon(Icons.keyboard_arrow_down_rounded, color: AppColors.primary),
          leading: Container(
            width: 44, height: 44,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.primary, width: 1.5),
            ),
            child: Icon(icon, color: AppColors.primary, size: 22),
          ),
          title: Text(label, style: AppTextStyles.tileTitle),
          children: [child],
        ),
      ),
      const Divider(height: 1, color: AppColors.divider),
    ]);
  }
}
