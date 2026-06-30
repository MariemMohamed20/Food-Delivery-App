import 'package:flutter/material.dart';

class HelpFaqScreen extends StatefulWidget {
  const HelpFaqScreen({super.key});

  @override
  State<HelpFaqScreen> createState() => _HelpFaqScreenState();
}

class _HelpFaqScreenState extends State<HelpFaqScreen> {
  int _selectedIndex = 4;
  int _chipIndex = 0;
  int _expandedIndex = 0;

  final List<String> _faqList = [
    'Lorem ipsum dolor sit amet?',
    'Lorem ipsum dolor sit amet?',
    'Lorem ipsum dolor sit amet?',
    'Lorem ipsum dolor sit ame?',
    'Lorem ipsum dolor sit amet?',
    'Lorem ipsum dolor sit amet?',
  ];

  final String _faqAnswer =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
      'Praesent pellentesque congue lorem, vel tincidunt tortor '
      'placerat a. Proin ac diam quam. Aenean in sagittis magna, '
      'ut feugiat diam.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7CA6A), // ✅ خلفية الـ Scaffold نفس لون الهيدر
      body: Column(
        children: [
          _buildHeader(),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),  // ✅ الانحناء الأبيض زي الـ Figma
                  topRight: Radius.circular(30),
                ),
              ),
              child: _buildBody(),
            ),
          ),
        ],
      ),
      bottomNavigationBar: _buildBottomNav(),
    );
  }

  // ── Header ──────────────────────────────────────────────
  Widget _buildHeader() {
    return SafeArea(
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 16,
          bottom: 20,
          left: 20,
          right: 20,
        ),
        child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: Color(0xFFD35400),
                    size: 24,
                  ),
                ),
                const SizedBox(width: 15),
                const Expanded(
                  child: Text(
                    'Help & FAQs',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 39),
              ],
            ),
            const SizedBox(height: 6),
            const Text(
              'How Can We Help You?',
              style: TextStyle(
                fontSize: 15,
                color: Color(0xFFD35400),
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ── Body ────────────────────────────────────────────────
  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          _buildTabs(),
          const SizedBox(height: 14),
          _buildChips(),
          const SizedBox(height: 14),
          _buildSearchBar(),
          const SizedBox(height: 8),
          Expanded(child: _buildFaqList()),
        ],
      ),
    );
  }

  // ── Tabs ────────────────────────────────────────────────
  Widget _buildTabs() {
    return Row(
      children: [
        Expanded(child: _tabButton('FAQ', true)),
        const SizedBox(width: 12),
        Expanded(child: _tabButton('Contact Us', false)),
      ],
    );
  }

  Widget _tabButton(String text, bool isSelected) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xFFD35400) : const Color(0xFFFFE5D0),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: isSelected ? Colors.white : const Color(0xFFD35400),
            fontWeight: FontWeight.w600,
            fontSize: 15,
          ),
        ),
      ),
    );
  }

  // ── Chips ───────────────────────────────────────────────
  Widget _buildChips() {
    return Row(
      children: [
        Expanded(child: _chipButton('General', _chipIndex == 0, () => setState(() => _chipIndex = 0))),
        const SizedBox(width: 8),
        Expanded(child: _chipButton('Account', _chipIndex == 1, () => setState(() => _chipIndex = 1))),
        const SizedBox(width: 8),
        Expanded(child: _chipButton('Services', _chipIndex == 2, () => setState(() => _chipIndex = 2))),
      ],
    );
  }

  Widget _chipButton(String text, bool isSelected, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFFD35400) : const Color(0xFFFFE5D0),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: isSelected ? Colors.white : const Color(0xFFD35400),
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }

  // ── Search Bar ──────────────────────────────────────────
  Widget _buildSearchBar() {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF5F5F5),
        borderRadius: BorderRadius.circular(30),
      ),
      child: const TextField(
        decoration: InputDecoration(
          hintText: 'Search',
          hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
          prefixIcon: Icon(Icons.search, color: Color(0xFFD35400), size: 22),
          suffixIcon: Padding(
            padding: EdgeInsets.all(10),
            child: CircleAvatar(
              backgroundColor: Color(0xFFD35400),
              radius: 16,
              child: Icon(Icons.tune, color: Colors.white, size: 18),
            ),
          ),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: 14),
        ),
      ),
    );
  }

  // ── FAQ List ────────────────────────────────────────────
  Widget _buildFaqList() {
    return ListView.separated(
      padding: EdgeInsets.zero,
      itemCount: _faqList.length,
      separatorBuilder: (_, __) => const Divider(
        height: 1,
        color: Color(0xFFEEEEEE),
        thickness: 0.5,
      ),
      itemBuilder: (context, index) {
        final isExpanded = _expandedIndex == index;
        final textColor = index == 0 ? Colors.black : const Color(0xFFD35400);

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () => setState(() => _expandedIndex = isExpanded ? -1 : index),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        _faqList[index],
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: textColor,
                        ),
                      ),
                    ),
                    Icon(
                      isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                      color: textColor,
                      size: 24,
                    ),
                  ],
                ),
              ),
            ),
            if (isExpanded)
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Text(
                  _faqAnswer,
                  style: const TextStyle(fontSize: 13, color: Colors.grey, height: 1.5),
                ),
              ),
          ],
        );
      },
    );
  }

  // ── Bottom Nav ──────────────────────────────────────────
  Widget _buildBottomNav() {
    return Container(
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
}