import 'package:flutter/material.dart';
import '../../core/core.dart';
import '../../widgets/widgets.dart';

class NotificationSettingScreen extends StatefulWidget {
  const NotificationSettingScreen({super.key});

  @override
  State<NotificationSettingScreen> createState() => _NotificationSettingScreenState();
}

class _NotificationSettingScreenState extends State<NotificationSettingScreen> {
  int _selectedIndex = 4;
  final _switches = {
    'General Notification': true,
    'Sound': true,
    'Sound Call': true,
    'Vibrate': false,
    'Special Offers': false,
    'Payments': false,
    'Promo and discount': false,
    'Cashback': false,
  };

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
                const Text(
                  'Notification Setting',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                ),
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
                padding: const EdgeInsets.fromLTRB(24, 30, 24, 24),
                child: WhiteCard(
                  child: Column(
                    children: _switches.entries.map((e) => SwitchRow(
                      label: e.key,
                      value: e.value,
                      onChanged: (v) => setState(() => _switches[e.key] = v),
                    )).toList(),
                  ),
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
      child: Icon(icon, color: _selectedIndex == index ? Colors.white : Colors.white.withOpacity(0.5), size: 28),
    );
  }
}