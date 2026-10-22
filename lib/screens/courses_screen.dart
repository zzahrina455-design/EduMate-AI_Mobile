import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Materi Kuliah', style: TextStyle(fontWeight: FontWeight.bold))),
      body: const Center(child: Text('Daftar Dokumen Kuliah (RAG Terintegrasi)', style: TextStyle(color: AppColors.textSecondary))),
    );
  }
}