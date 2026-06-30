import 'package:flutter/material.dart';
import 'app_colors.dart';

abstract class AppTextStyles {
  static const headerTitle = TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: AppColors.white);
  static const headerSub   = TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: AppColors.primary);
  static const fieldLabel  = TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: AppColors.textDark);
  static const fieldInput  = TextStyle(fontSize: 13, color: AppColors.textDark);
  static const tileTitle   = TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: AppColors.textDark);
  static const tilePrimary = TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: AppColors.primary);
  static const menuLabel   = TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: AppColors.textDark);
  static const btnLabel    = TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: AppColors.white);
  static const switchLabel = TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: AppColors.textDark);
  static const faqAnswer   = TextStyle(fontSize: 12, color: AppColors.textMid, height: 1.6);
  static const tabActive   = TextStyle(fontSize: 13, fontWeight: FontWeight.w700, color: AppColors.white);
  static const tabInactive = TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: AppColors.primary);
  static const chipActive  = TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: AppColors.white);
  static const chipInact   = TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: AppColors.primary);
  static const bodyMid     = TextStyle(fontSize: 12, color: AppColors.textMid, height: 1.6);
}
