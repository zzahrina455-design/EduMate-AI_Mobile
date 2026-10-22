import 'package:flutter_test/flutter_test.dart';

import 'package:edumate_flutter/main.dart'; // Pastikan nama package sesuai dengan nama proyekmu

void main() {
  testWidgets('EduMate AI Mobile smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame menggunakan EduMateApp.
    await tester.pumpWidget(const EduMateApp());

    // Memastikan bahwa aplikasi berhasil dimuat dengan mencari teks 'Dashboard'.
    // Menggunakan findsWidgets karena kata 'Dashboard' muncul di AppBar dan BottomNavigationBar.
    expect(find.text('Dashboard'), findsWidgets);

    // Memastikan bahwa menu 'Profil' ada di BottomNavigationBar.
    expect(find.text('Profil'), findsOneWidget);
  });
}