import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery/screens/Login/hello_screen.dart';
import 'package:food_delivery/screens/Login/log_in_screen.dart';
import 'package:food_delivery/screens/Login/sign_up_screen.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int activeIndex = 0;
  List<Widget> screens = [
    LogInScreen(),
    SignUpScreen(),
    HelloScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0)
        ),
         child: BottomNavigationBar(
          backgroundColor: Color(0xFFE85824),
          type: BottomNavigationBarType.fixed,
          currentIndex: activeIndex,
          selectedItemColor: Color(0xffFFFFFF),
          onTap: (index) {
            setState(() {
              activeIndex = index;
            });
          }, 
          items:[
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/Vector.svg',
              colorFilter: activeIndex== 0 ? ColorFilter.mode(Color(0xffFFFFFF), BlendMode.srcIn) : null,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/Vector (1).svg',
              colorFilter: activeIndex== 1 ? ColorFilter.mode(Color(0xffFFFFFF), BlendMode.srcIn) : null,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/Vector (2).svg',
              colorFilter: activeIndex== 2 ? ColorFilter.mode(Color(0xffFFFFFF), BlendMode.srcIn)  : null,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/Group 192.svg',
              colorFilter: activeIndex== 3 ? ColorFilter.mode(Color(0xffFFFFFF), BlendMode.srcIn) : null,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/Vector (3).svg',
              colorFilter: activeIndex== 4 ? ColorFilter.mode(Color(0xffFFFFFF), BlendMode.srcIn) : null,
              ),
              label: '',
            ),
          ],
               ),
       ),
      body: screens[activeIndex]
    );
  }
}
