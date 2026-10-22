import 'package:flutter/material.dart';
import 'constants/app_colors.dart';
import 'screens/student_main_layout.dart';

void main() {
  runApp(const EduMateApp());
}

class EduMateApp extends StatelessWidget {
  const EduMateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EduMate AI Mobile',
      debugShowCheckedModeBanner: false, // Menghilangkan banner "DEBUG" di pojok kanan atas
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.background,
        primaryColor: AppColors.primary,
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.surface,
          foregroundColor: AppColors.textPrimary,
          elevation: 0,
          centerTitle: true,
        ),
      ),
      // Mengarahkan tampilan awal ke layout utama mahasiswa
      home: const StudentMainLayout(),
    );
  }
}