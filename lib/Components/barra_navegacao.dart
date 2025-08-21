import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const CustomBottomNavigation({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
      child: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20), bottom: Radius.circular(20)),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(20), bottom: Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.06),
                blurRadius: 18,
                offset: const Offset(0, -2),
              ),
            ],
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex,
            onTap: onTap,
            selectedItemColor: const Color(0xFFFFC107),
            unselectedItemColor: const Color(0xFF9CA3AF),
            showSelectedLabels: true,
            showUnselectedLabels: true,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Início'),
              BottomNavigationBarItem(icon: Icon(Icons.view_list_outlined), label: 'Serviços'),
              BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'Perfil'),
            ],
          ),
        ),
      ),
    );
  }
}
