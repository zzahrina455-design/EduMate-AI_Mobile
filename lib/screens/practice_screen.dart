import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class PracticeScreen extends StatelessWidget {
  const PracticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AI Pitch Practice', style: TextStyle(fontWeight: FontWeight.bold))),
      body: const Center(child: Text('Halaman Latihan Pitching & Evaluasi', style: TextStyle(color: AppColors.textSecondary))),
    );
  }
}