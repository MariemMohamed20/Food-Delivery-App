import 'package:flutter/material.dart';
import '../../core/core.dart';
import '../../widgets/widgets.dart';
import '../profile/my_profile_screen.dart';
import '../contact/contact_us_screen.dart';
import '../faq/help_faq_screen.dart';
import '../settings/settings_screen.dart';
import '../notification/notification_setting_screen.dart';

class AccountMenuScreen extends StatelessWidget {
  const AccountMenuScreen({super.key});

  static const _items = [
    Strings.myProfile,
    Strings.contactUs,
    Strings.helpFaqs,
    Strings.settings,
    Strings.notifSetting,
  ];

  void _navigate(BuildContext ctx, String item) {
    final routes = <String, Widget>{
      Strings.myProfile:   const MyProfileScreen(),
      Strings.contactUs:   const ContactUsScreen(),
      Strings.helpFaqs:    const HelpFaqScreen(),
      Strings.settings:    const SettingsScreen(),
      Strings.notifSetting:const NotificationSettingScreen(),
    };
    Navigator.push(ctx, MaterialPageRoute(builder: (_) => routes[item]!));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: const Color(0xFFFFD460),
      body: Stack(
        children: [

          Positioned.fill(
            top: 130,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(35)),
              ),
            ),
          ),

          Positioned.fill(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.fromLTRB(24, 60, 24, 30),
                  child: const Center(
                    child: Text(
                      'My Account',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),

                Expanded(
                  child: ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    padding: const EdgeInsets.fromLTRB(24, 30, 24, 20),
                    itemCount: _items.length,
                    separatorBuilder: (context, index) => const SizedBox(height: 12),
                    itemBuilder: (context, index) {
                      final item = _items[index];
                      return MenuTile(
                        label: item,
                        onTap: () => _navigate(context, item),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}