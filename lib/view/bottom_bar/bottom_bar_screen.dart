import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yoga_app/res/constant/app_color.dart';
import 'package:yoga_app/view/bottom_bar/asanas_screen.dart';
import 'package:yoga_app/view/bottom_bar/home_screen.dart';
import 'package:yoga_app/view/bottom_bar/mind_screen.dart';
import 'package:yoga_app/view/bottom_bar/recipes_screen.dart';
import 'package:yoga_app/view/bottom_bar/store_screen.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  final List screenList = [
    const HomeScreen(),
    const AsanasScreen(),
    const MindScreen(),
    const StoreScreen(),
    const RecipesScreen(),
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList.elementAt(selectedIndex),
      bottomNavigationBar: SizedBox(
        height: 70,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.buttonColor,
          currentIndex: selectedIndex,
          unselectedItemColor: const Color(0xff999999),
          onTap: (value) => setState(() {
            selectedIndex = value;
          }),
          items: [
            BottomNavigationBarItem(icon: SvgPicture.asset("assets/icons/home.svg"), activeIcon: SvgPicture.asset("assets/icons/home_fill.svg"), label: "home"),
            BottomNavigationBarItem(icon: SvgPicture.asset("assets/icons/Asanas.svg"), activeIcon: SvgPicture.asset("assets/icons/Asanas_fill.svg"), label: "Asanas"),
            BottomNavigationBarItem(icon: SvgPicture.asset("assets/icons/Mind.svg"), activeIcon: SvgPicture.asset("assets/icons/Mind_fill.svg"), label: "Mind"),
            BottomNavigationBarItem(icon: SvgPicture.asset("assets/icons/store.svg"), activeIcon: SvgPicture.asset("assets/icons/store_fill.svg"), label: "Store"),
            BottomNavigationBarItem(icon: SvgPicture.asset("assets/icons/Recipes.svg"), activeIcon: SvgPicture.asset("assets/icons/Recipes_fill.svg"), label: "Recipes"),
          ],
        ),
      ),
    );
  }
}
