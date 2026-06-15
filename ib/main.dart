import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
  
  runApp(const FlutterProMaxV5());
}

class FlutterProMaxV5 extends StatefulWidget {
  const FlutterProMaxV5({super.key});

  @override
  State<FlutterProMaxV5> createState() => _FlutterProMaxV5State();
}

class _FlutterProMaxV5State extends State<FlutterProMaxV5> {
  ThemeMode _themeMode = ThemeMode.dark;

  void _toggleTheme() {
    setState(() {
      _themeMode = _themeMode == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Moe Kyaw Aung | Flutter Pro Max V5',
      debugShowCheckedModeBanner: false,
      themeMode: _themeMode,
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          primary: Color(0xFF64FFDA),
          secondary: Color(0xFF00D4FF),
          surface: Color(0xFFF5F7FA),
        ),
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.dark(
          primary: Color(0xFF64FFDA),
          secondary: Color(0xFF00D4FF),
          tertiary: Color(0xFFFF6B9D),
          surface: Color(0xFF0A192F),
        ),
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      home: HomeScreenV5(themeToggle: _toggleTheme),
    );
  }
}
