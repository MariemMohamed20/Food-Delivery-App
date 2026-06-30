import 'package:flutter/material.dart';
import '../../core/core.dart';
import '../../widgets/widgets.dart';
import 'account_menu_screen.dart';

class MainShell extends StatefulWidget {
  const MainShell({super.key});

  @override
  State<MainShell> createState() => _MainShellState();
}

class _MainShellState extends State<MainShell> {
  int _index = 0;

  static const _tabLabels = ['Home', 'Menu', 'Favourites', 'Orders'];

  Widget _buildTab() {
    if (_index == 4) return const AccountMenuScreen();
    return SafeArea(
      child: Center(
        child: Text(
          _tabLabels[_index],
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: AppColors.textMid),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffold,

      body: _buildTab(),
      bottomNavigationBar: SafeArea(
        child: BottomNavBar(
          currentIndex: _index,
          onTap: (i) => setState(() => _index = i),
        ),
      ),
    );
  }
}