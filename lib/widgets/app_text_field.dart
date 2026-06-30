import 'package:flutter/material.dart';
import '../core/core.dart';

class AppTextField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool obscureText;
  final Widget? suffixIcon; // جعلناها اختيارية
  final String? hintText;   // جعلناها اختيارية

  const AppTextField({
    super.key,
    required this.label,
    required this.controller,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.suffixIcon,
    this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: AppTextStyles.fieldLabel),
          const SizedBox(height: 7),
          TextField(
            controller: controller,
            keyboardType: keyboardType,
            obscureText: obscureText,
            style: AppTextStyles.fieldInput,
            decoration: InputDecoration(
              hintText: hintText, // الآن سيعمل بدون إيرور
              suffixIcon: suffixIcon, // الآن سيعمل بدون إيرور
              filled: true,
              fillColor: AppColors.amberBg,
              contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(28),
                  borderSide: BorderSide.none
              ),
            ),
          ),
          const SizedBox(height: 16),
        ]
    );
  }
}