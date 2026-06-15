import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'screens/home_screen.dart';
import 'providers/theme_provider.dart';
import 'providers/analytics_provider.dart';
import 'constants/app_constants_v5.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Set preferred orientations
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
  
  // Initialize Firebase (if enabled)
  // await Firebase.initializeApp();
  
  runApp(const FlutterProMaxV5());
}

class FlutterProMaxV5 extends StatelessWidget {
  const FlutterProMaxV5({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<ThemeProvider>(
          create: (_) => ThemeProvider(),
        ),
        Provider<AnalyticsProvider>(
          create: (_) => AnalyticsProvider(),
        ),
      ],
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) {
          return MaterialApp(
            title: 'Moe Kyaw Aung | Flutter Pro Max V5',
            debugShowCheckedModeBanner: false,
            themeMode: themeProvider.themeMode,
            theme: ThemeData(
              colorScheme: ColorScheme.light(
                primary: AppConstantsV5.primaryColor,
                secondary: AppConstantsV5.secondaryColor,
                surface: Color(0xFFF5F7FA),
              ),
              useMaterial3: true,
              brightness: Brightness.light,
            ),
            darkTheme: ThemeData(
              colorScheme: ColorScheme.dark(
                primary: AppConstantsV5.primaryColor,
                secondary: AppConstantsV5.secondaryColor,
                tertiary: AppConstantsV5.accentColor,
                surface: AppConstantsV5.darkBackground,
              ),
              useMaterial3: true,
              brightness: Brightness.dark,
            ),
            home: const HomeScreenV5(),
            localizationsDelegates: [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: [
              Locale('en', 'US'),
              Locale('my', 'MM'),
            ],
          );
        },
      ),
    );
  }
}
