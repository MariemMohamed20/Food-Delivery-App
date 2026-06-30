import 'package:flutter/material.dart';
import '../core/core.dart';

class SwitchRow extends StatelessWidget {
  final String label;
  final bool value;
  final ValueChanged<bool> onChanged;

  const SwitchRow({super.key, required this.label, required this.value, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 6),
        child: Row(children: [
          Expanded(child: Text(label, style: AppTextStyles.switchLabel)),
          Switch(
            value: value,
            onChanged: onChanged,
            activeColor: AppColors.white,
            activeTrackColor: AppColors.primary,
            inactiveThumbColor: AppColors.white,
            inactiveTrackColor: AppColors.switchOff,
            trackOutlineColor: WidgetStateProperty.all(Colors.transparent),
          ),
        ]),
      ),
      const Divider(height: 1, color: AppColors.divider),
    ]);
  }
}
