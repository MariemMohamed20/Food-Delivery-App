import 'package:flutter/material.dart';
import '../core/core.dart';

class ContactTile extends StatelessWidget {
  final IconData icon;
  final String label;

  const ContactTile({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 14),
        child: Row(children: [
          _CircleIcon(icon: icon),
          const SizedBox(width: 14),
          Expanded(child: Text(label, style: AppTextStyles.tileTitle)),
          const Icon(Icons.keyboard_arrow_down_rounded, color: AppColors.primary),
        ]),
      ),
      const Divider(height: 1, color: AppColors.divider),
    ]);
  }
}

class _CircleIcon extends StatelessWidget {
  final IconData icon;
  const _CircleIcon({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 44, height: 44,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: AppColors.primary, width: 1.5),
      ),
      child: Icon(icon, color: AppColors.primary, size: 22),
    );
  }
}
