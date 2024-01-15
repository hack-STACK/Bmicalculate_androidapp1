
import 'package:finance_app/src/features/authentication/screens/splash_screen.dart';
import 'package:finance_app/src/utils/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      
     theme:NAappTheme.lightTheme,
     darkTheme: NAappTheme.darkTheme,
     themeMode: ThemeMode.system,
     home:  const SplashScreen()
    );
  }
}
