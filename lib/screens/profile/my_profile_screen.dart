import 'package:flutter/material.dart';
import '../../core/core.dart';
import '../../widgets/widgets.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({super.key});

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  final _name = TextEditingController(text: 'John Smith');
  final _dob = TextEditingController(text: '09 / 10 / 1991');
  final _email = TextEditingController(text: 'johnsmith@example.com');
  final _phone = TextEditingController(text: '+123 567 89000');

  int _currentIndex = 4;

  @override
  void dispose() {
    _name.dispose();
    _dob.dispose();
    _email.dispose();
    _phone.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFD460),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          scrolledUnderElevation: 0,
          toolbarHeight: 90,
          leading: Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: IconButton(
              icon: const Icon(Icons.arrow_back_ios, color: Color(0xFFE76F51), size: 22),
              onPressed: () => Navigator.pop(context),
            ),
          ),
          title: const Padding(
            padding: EdgeInsets.only(top: 15.0),
            child: Text(
              Strings.myProfile,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          centerTitle: true,
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            top: 0,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(35)),
              ),
            ),
          ),
          Positioned.fill(
            top: 0,
            child: SafeArea(
              bottom: false,
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 25.0, bottom: 20.0),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                width: 110,
                                height: 110,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.06),
                                      blurRadius: 10,
                                      offset: const Offset(0, 4),
                                    )
                                  ],
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(24),
                                  child: Image.asset(
                                    'assets/images/Profil.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                  padding: const EdgeInsets.all(6),
                                  decoration: const BoxDecoration(
                                    color: Color(0xFFE76F51),
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Icon(
                                    Icons.camera_alt_outlined,
                                    color: Colors.white,
                                    size: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 30),
                          AppTextField(label: Strings.fullName, controller: _name),
                          const SizedBox(height: 20),
                          AppTextField(
                            label: Strings.dateOfBirth,
                            controller: _dob,
                            keyboardType: TextInputType.datetime,
                          ),
                          const SizedBox(height: 20),
                          AppTextField(
                            label: Strings.email,
                            controller: _email,
                            keyboardType: TextInputType.emailAddress,
                          ),
                          const SizedBox(height: 20),
                          // تم تصحيح سطر الـ phoneNumber هنا:
                          AppTextField(
                            label: Strings.phoneNumber,
                            controller: _phone,
                            keyboardType: TextInputType.phone,
                          ),
                          const SizedBox(height: 40),
                          SizedBox(
                            width: 200,
                            height: 50,
                            child: OrangeButton(
                              label: Strings.updateProfile,
                              onPressed: () {},
                            ),
                          ),
                          const SizedBox(height: 25),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 70,
                    padding: EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom / 2),
                    decoration: const BoxDecoration(
                      color: Color(0xFFE76F51),
                      borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _buildNavItem(0, Icons.home_outlined, Icons.home),
                        _buildNavItem(1, Icons.restaurant_menu_outlined, Icons.restaurant_menu),
                        _buildNavItem(2, Icons.favorite_border, Icons.favorite),
                        _buildNavItem(3, Icons.assignment_outlined, Icons.assignment),
                        _buildNavItem(4, Icons.support_agent_outlined, Icons.support_agent),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem(int index, IconData unselectedIcon, IconData selectedIcon) {
    final isSelected = _currentIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(12),
        color: Colors.transparent,
        child: Icon(
          isSelected ? selectedIcon : unselectedIcon,
          color: isSelected ? Colors.white : Colors.white.withOpacity(0.6),
          size: isSelected ? 28 : 25,
        ),
      ),
    );
  }
}