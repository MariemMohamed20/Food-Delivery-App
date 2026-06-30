import 'package:flutter/material.dart';
import '../core/core.dart';

class FaqTile extends StatelessWidget {
  final String question;
  final String answer;
  final bool initiallyExpanded;

  const FaqTile({
    super.key,
    required this.question,
    required this.answer,
    this.initiallyExpanded = false,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        initiallyExpanded: initiallyExpanded,
        tilePadding: EdgeInsets.zero,
        childrenPadding: const EdgeInsets.only(bottom: 12),
        trailing: const Icon(Icons.keyboard_arrow_down_rounded, color: AppColors.primary),
        title: Text(question, style: initiallyExpanded ? AppTextStyles.tileTitle : AppTextStyles.tilePrimary),
        children: [Text(answer, style: AppTextStyles.faqAnswer)],
      ),
    );
  }
}
