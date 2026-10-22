import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profilku', style: TextStyle(fontWeight: FontWeight.bold))),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const CircleAvatar(radius: 50, backgroundColor: AppColors.primary, child: Icon(Icons.person, size: 50, color: Colors.white)),
          const SizedBox(height: 16),
          const Center(child: Text('Mahasiswa Teknik Informatika', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
          const SizedBox(height: 32),
          ListTile(
            tileColor: AppColors.surface,
            leading: const Icon(Icons.history, color: AppColors.primary),
            title: const Text('Riwayat Akademik / History'),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            onTap: () {}, // Arahkan ke rute history spesifik jika dibutuhkan
          ),
        ],
      ),
    );
  }
}