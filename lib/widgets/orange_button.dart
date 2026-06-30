import 'package:flutter/material.dart';
import '../core/core.dart';

class OrangeButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color? color;

  const OrangeButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? AppColors.primary,
          foregroundColor: AppColors.white,
          padding: const EdgeInsets.symmetric(vertical: 14),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
          elevation: 0,
        ),
        child: Text(label, style: AppTextStyles.btnLabel),
      ),
    );
  }
}
