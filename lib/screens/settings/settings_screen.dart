import 'package:flutter/material.dart';
import '../../core/core.dart';
import '../../widgets/widgets.dart';
import '../notification/notification_setting_screen.dart';
import 'set_password_screen.dart'; // ✅ نفس الفولدر

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  int _selectedIndex = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7CA6A),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 60, bottom: 30, left: 20, right: 20),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(Icons.arrow_back_ios, color: Color(0xFFD35400), size: 24),
                ),
                const SizedBox(width: 15),
                const Expanded(
                  child: Text(
                    'Settings',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
                const SizedBox(width: 39),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(20, 30, 20, 24),
                child: Column(
                  children: [
                    SettingsExpansionTile(
                      icon: Icons.notifications_none_rounded,
                      label: Strings.notifSetting,
                      child: OrangeButton(
                        label: 'Open Notification Settings',
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => const NotificationSettingScreen()),
                        ),
                      ),
                    ),
                    SettingsExpansionTile(
                      icon: Icons.vpn_key_outlined,
                      label: 'Password Setting',
                      child: OrangeButton(
                        label: 'Set New Password',
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => const SetPasswordScreen()),
                        ),
                      ),
                    ),
                    SettingsExpansionTile(
                      icon: Icons.person_outline_rounded,
                      label: Strings.deleteAccount,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Deleting your account is permanent and cannot be undone. All data will be erased.',
                            style: AppTextStyles.bodyMid,
                          ),
                          const SizedBox(height: 12),
                          OrangeButton(
                            label: Strings.deleteAccount,
                            color: AppColors.deleteRed,
                            onPressed: () => _confirmDelete(context),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
          child: Container(
            height: 75,
            color: const Color(0xFFD35400),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _navIcon(Icons.home_outlined, 0),
                _navIcon(Icons.room_service_outlined, 1),
                _navIcon(Icons.favorite_border, 2),
                _navIcon(Icons.assignment_outlined, 3),
                _navIcon(Icons.headset_mic_outlined, 4),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _navIcon(IconData icon, int index) {
    return GestureDetector(
      onTap: () => setState(() => _selectedIndex = index),
      child: Icon(
        icon,
        color: _selectedIndex == index ? Colors.white : Colors.white.withOpacity(0.5),
        size: 28,
      ),
    );
  }

  void _confirmDelete(BuildContext ctx) {
    showDialog(
      context: ctx,
      builder: (_) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: const Text('Delete Account'),
        content: const Text('Are you sure? This action cannot be undone.'),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx), child: const Text('Cancel')),
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: Text('Delete', style: TextStyle(color: AppColors.deleteRed)),
          ),
        ],
      ),
    );
  }
}