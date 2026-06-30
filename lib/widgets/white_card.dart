import 'package:flutter/material.dart';
import '../core/core.dart';

class WhiteCard extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;

  const WhiteCard({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.fromLTRB(20, 24, 20, 24),
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
        ),
        child: SingleChildScrollView(
          padding: padding,
          child: child,
        ),
      ),
    );
  }
}
