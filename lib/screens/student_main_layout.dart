import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

// Import halaman-halaman yang sudah dipisah
import 'dashboard_screen.dart';
import 'courses_screen.dart';
import 'chat_screen.dart';
import 'practice_screen.dart';
import 'profile_screen.dart';

class StudentMainLayout extends StatefulWidget {
  const StudentMainLayout({super.key});

  @override
  State<StudentMainLayout> createState() => _StudentMainLayoutState();
}

class _StudentMainLayoutState extends State<StudentMainLayout> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const StudentDashboardScreen(),
    const CoursesScreen(),
    const ChatScreen(),
    const PracticeScreen(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, -5),
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          backgroundColor: AppColors.surface,
          selectedItemColor: AppColors.primary,
          unselectedItemColor: AppColors.textSecondary,
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.dashboard_rounded), label: 'Dashboard'),
            BottomNavigationBarItem(icon: Icon(Icons.book_rounded), label: 'Materi'),
            BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_rounded), label: 'EduMate AI'),
            BottomNavigationBarItem(icon: Icon(Icons.mic_rounded), label: 'Practice'),
            BottomNavigationBarItem(icon: Icon(Icons.person_rounded), label: 'Profil'),
          ],
        ),
      ),
    );
  }
}