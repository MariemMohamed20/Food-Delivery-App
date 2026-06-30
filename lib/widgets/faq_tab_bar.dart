import 'package:flutter/material.dart';
import '../core/core.dart';

class FaqTabBar extends StatelessWidget {
  final bool isFaqActive;
  final VoidCallback onFaq;
  final VoidCallback onContact;

  const FaqTabBar({super.key, required this.isFaqActive, required this.onFaq, required this.onContact});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(color: AppColors.primarySoft, borderRadius: BorderRadius.circular(30)),
      child: Row(children: [
        _Tab(label: Strings.faq,       active: isFaqActive,  onTap: onFaq),
        _Tab(label: Strings.contactUs, active: !isFaqActive, onTap: onContact),
      ]),
    );
  }
}

class _Tab extends StatelessWidget {
  final String label;
  final bool active;
  final VoidCallback onTap;

  const _Tab({required this.label, required this.active, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: const EdgeInsets.all(4),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: active ? AppColors.primary : Colors.transparent,
            borderRadius: BorderRadius.circular(26),
          ),
          child: Text(label, style: active ? AppTextStyles.tabActive : AppTextStyles.tabInactive),
        ),
      ),
    );
  }
}
