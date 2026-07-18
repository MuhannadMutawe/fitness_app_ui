import 'package:fitness_app_ui/app/designe/designe_token.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key, required this.shell});

  final StatefulNavigationShell shell;

  void _onTab(int indext) => shell.goBranch(
    indext,
    initialLocation: indext == shell.currentIndex,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: shell,
      bottomNavigationBar: Container(
        height: 90,
        decoration: BoxDecoration(
          color: DT.bg,
        ),
        child: Container(
          margin: EdgeInsets.only(bottom: DT.s8, right: DT.s6, left: DT.s6),
          padding: EdgeInsets.symmetric(horizontal: DT.s2),
          decoration: BoxDecoration(
            color: DT.bgBlack,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NavItem(
                icon: Icons.home_outlined,
                isSelected: shell.currentIndex == 0,
                onTap: () => _onTab(0),
              ),
              NavItem(
                icon: Icons.fitness_center,
                isSelected: shell.currentIndex == 1,
                onTap: () => _onTab(1),
              ),
              NavItem(
                icon: Icons.person_2_outlined,
                isSelected: shell.currentIndex == 2,
                onTap: () => _onTab(2),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  const NavItem({
    super.key,
    required this.icon,
    required this.isSelected,
    required this.onTap,
  });

  final IconData icon;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: isSelected ? DT.bg : Colors.transparent,
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          color: isSelected ? DT.bgBlack : DT.bg,
          size: DT.s6,
        ),
      ),
    );
  }
}
