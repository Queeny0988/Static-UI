import 'package:flutter/material.dart';

import 'screens/dashboard_screen.dart';
import 'screens/login_screen.dart';
import 'theme/app_theme.dart';

/// Pick a static screen at launch without adding navigation logic:
/// `flutter run --dart-define=screen=dashboard`
const _screen = String.fromEnvironment('screen', defaultValue: 'dashboard');

void main() => runApp(const BlushApp());

class BlushApp extends StatelessWidget {
  const BlushApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Blush',
      theme: AppTheme.light,
      home: _screen == 'dashboard' ? const DashboardScreen() : const LoginScreen(),
    );
  }
}
