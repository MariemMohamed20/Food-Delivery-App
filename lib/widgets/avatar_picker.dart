import 'package:flutter/material.dart';
import '../core/core.dart';

class AvatarPicker extends StatelessWidget {
  const AvatarPicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(clipBehavior: Clip.none, children: [
        CircleAvatar(
          radius: 45,
          backgroundColor: AppColors.amberBg,
          backgroundImage: const AssetImage(Assets.profilePic),
          onBackgroundImageError: (_, __) {},
          child: const Icon(Icons.person, size: 48, color: AppColors.primary),
        ),
        Positioned(
          bottom: 0, right: -2,
          child: Container(
            width: 28, height: 28,
            decoration: const BoxDecoration(color: AppColors.primary, shape: BoxShape.circle),
            child: const Icon(Icons.camera_alt_rounded, color: AppColors.white, size: 14),
          ),
        ),
      ]),
    );
  }
}
