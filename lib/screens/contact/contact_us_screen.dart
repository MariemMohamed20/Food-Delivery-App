import 'package:flutter/material.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({super.key});

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  int _selectedIndex = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: const Color(0xFFF7CA6A),
      body: Column(
        children: [
          // الهيدر
          Container(
            padding: const EdgeInsets.only(top: 60, bottom: 20, left: 20, right: 20),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(Icons.arrow_back_ios, color: Color(0xFFD35400)),
                ),
                const Expanded(
                  child: Column(
                    children: [
                      Text('Contact Us', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white)),
                      Text('How Can We Help You?', style: TextStyle(fontSize: 14, color: Color(0xFFD35400))),
                    ],
                  ),
                ),
                const SizedBox(width: 40),
              ],
            ),
          ),

          // الجسم الأبيض
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(35)),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      children: [
                        Expanded(child: _tabButton('FAQ', false)),
                        const SizedBox(width: 16),
                        Expanded(child: _tabButton('Contact Us', true)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  Expanded(
                    child: ListView(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      children: [
                        _buildTile(Icons.headset_mic_outlined, 'Customer service'),
                        _buildTile(Icons.language_outlined, 'Website'),
                        _buildTile(Icons.chat_bubble_outline, 'Whatsapp'),
                        _buildTile(Icons.facebook_outlined, 'Facebook'),
                        _buildTile(Icons.camera_alt_outlined, 'Instagram'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

      // الـ Bottom Navigation Bar المدمج
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
        child: Container(
          height: 80,
          color: const Color(0xFFD35400),
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
    );
  }

  Widget _tabButton(String text, bool isSelected) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xFFD35400) : const Color(0xFFFFE5D0),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(child: Text(text, style: TextStyle(color: isSelected ? Colors.white : const Color(0xFFD35400), fontWeight: FontWeight.bold))),
    );
  }

  Widget _buildTile(IconData icon, String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: Row(
        children: [
          Icon(icon, color: const Color(0xFFD35400), size: 28),
          const SizedBox(width: 15),
          Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
          const Spacer(),
          const Icon(Icons.arrow_forward_ios, size: 14, color: Colors.grey),
        ],
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