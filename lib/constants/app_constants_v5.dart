import 'package:flutter/material.dart';

class AppConstantsV5 {
  // Ultimate Color Palette (16 Colors)
  static const Color primaryColor = Color(0xFF64FFDA);
  static const Color secondaryColor = Color(0xFF00D4FF);
  static const Color accentColor = Color(0xFFFF6B9D);
  static const Color successColor = Color(0xFF00E676);
  static const Color warningColor = Color(0xFFFFAB00);
  static const Color errorColor = Color(0xFFFF5252);
  static const Color infoColor = Color(0xFF2196F3);
  static const Color purpleColor = Color(0xFF8B5CF6);
  static const Color goldColor = Color(0xFFFFD700);
  static const Color coralColor = Color(0xFFFF6B6B);
  
  // Background Colors
  static const Color darkBackground = Color(0xFF0A192F);
  static const Color darkerBackground = Color(0xFF020C1B);
  static const Color cardBackground = Color(0xFF112240);
  static const Color surfaceColor = Color(0xFF1E295B);
  static const Color glassBackground = Color(0xFF112240).withOpacity(0.7);
  
  // Text Colors
  static const Color white = Color(0xFFE6F1FF);
  static const Color textPrimary = Color(0xFFA8B2D1);
  static const Color textSecondary = Color(0xFF8892B0);
  static const Color textMuted = Color(0xFF6B7280);
  
  // Ultimate Gradients (10 Gradients)
  static const List<Color> gradientPrimary = [
    Color(0xFF64FFDA),
    Color(0xFF00D4FF),
    Color(0xFF8B5CF6),
  ];
  
  static const List<Color> gradientSecondary = [
    Color(0xFFFF6B9D),
    Color(0xFF64FFDA),
    Color(0xFF00D4FF),
  ];
  
  static const List<Color> gradientDark = [
    Color(0xFF0A192F),
    Color(0xFF020C1B),
    Color(0xFF112240),
  ];
  
  static const List<Color> gradientGold = [
    Color(0xFFFFD700),
    Color(0xFFFFAB00),
    Color(0xFFFF6B00),
  ];
  
  static const List<Color> gradientPurple = [
    Color(0xFF8B5CF6),
    Color(0xFF64FFDA),
    Color(0xFF00D4FF),
  ];
  
  static const List<Color> gradientCoral = [
    Color(0xFFFF6B6B),
    Color(0xFFFF6B9D),
    Color(0xFF00D4FF),
  ];
  
  // Spacing (Enterprise Standard - 12 levels)
  static const double spacingXS = 2.0;
  static const double spacingXXS = 4.0;
  static const double spacingSmall = 8.0;
  static const double spacingMedium = 16.0;
  static const double spacingLarge = 24.0;
  static const double spacingXLarge = 32.0;
  static const double spacingXXLarge = 48.0;
  static const double spacingXXXLarge = 64.0;
  static const double spacingXXXXLarge = 80.0;
  static const double sectionPadding = 180.0;
  static const double heroHeight = 950.0;
  
  // Ultimate Font Sizes (14 levels)
  static const double fontSizeXS = 10.0;
  static const double fontSizeXXS = 9.0;
  static const double fontSizeSmall = 12.0;
  static const double fontSizeMedium = 14.0;
  static const double fontSizeLarge = 16.0;
  static const double fontSizeXLarge = 20.0;
  static const double fontSizeXXLarge = 28.0;
  static const double fontSizeXXXLarge = 36.0;
  static const double fontSizeHero = 80.0;
  static const double fontSizeSection = 56.0;
  
  // Border Radius (8 levels)
  static const double radiusXS = 4.0;
  static const double radiusSmall = 8.0;
  static const double radiusMedium = 12.0;
  static const double radiusLarge = 16.0;
  static const double radiusXLarge = 24.0;
  static const double radiusXXLarge = 32.0;
  static const double radiusXXXLarge = 40.0;
  static const double radiusCircle = 50.0;
  
  // Ultimate Shadows (5 levels)
  static const List<BoxShadow> shadowNone = [];
  
  static const List<BoxShadow> shadowXS = [
    BoxShadow(color: Color(0x05000000), blurRadius: 2, offset: Offset(0, 1)),
  ];
  
  static const List<BoxShadow> shadowSmall = [
    BoxShadow(color: Color(0x0A000000), blurRadius: 4, offset: Offset(0, 2)),
  ];
  
  static const List<BoxShadow> shadowMedium = [
    BoxShadow(color: Color(0x14000000), blurRadius: 8, offset: Offset(0, 4)),
  ];
  
  static const List<BoxShadow> shadowLarge = [
    BoxShadow(color: Color(0x1A000000), blurRadius: 16, offset: Offset(0, 8)),
    BoxShadow(color: Color(0x0A000000), blurRadius: 32, offset: Offset(0, 16)),
  ];
  
  static const List<BoxShadow> shadowXXLarge = [
    BoxShadow(color: Color(0x20000000), blurRadius: 24, offset: Offset(0, 12)),
    BoxShadow(color: Color(0x10000000), blurRadius: 48, offset: Offset(0, 24)),
  ];
  
  // Ultimate Glow Effects (4 levels)
  static const List<BoxShadow> glowXS = [
    BoxShadow(color: Color(0x2064FFDA), blurRadius: 15, spreadRadius: 2),
  ];
  
  static const List<BoxShadow> glowSmall = [
    BoxShadow(color: Color(0x3064FFDA), blurRadius: 20, spreadRadius: 3),
  ];
  
  static const List<BoxShadow> glowMedium = [
    BoxShadow(color: Color(0x4064FFDA), blurRadius: 30, spreadRadius: 5),
  ];
  
  static const List<BoxShadow> glowLarge = [
    BoxShadow(color: Color(0x5064FFDA), blurRadius: 40, spreadRadius: 8),
    BoxShadow(color: Color(0x3000D4FF), blurRadius: 60, spreadRadius: 12),
  ];
  
  // Ultimate Animations (8 durations)
  static const Duration instant = Duration(milliseconds: 200);
  static const Duration fast = Duration(milliseconds: 300);
  static const Duration normal = Duration(milliseconds: 500);
  static const Duration slow = Duration(milliseconds: 700);
  static const Duration slowest = Duration(milliseconds: 900);
  static const Duration ultraSlow = Duration(milliseconds: 1200);
  
  // Ultimate Performance (Pro Max)
  static const int particleCount = 1000;
  static const double particleSize = 3.0;
  static const double particleSpeed = 1.0;
  static const int maxAnimations = 100;
  static const double fpsTarget = 60.0;
  
  // Personal Data (Ultimate Profile)
  static const String name = "Moe Kyaw Aung";
  static const String title = "Android Senior Developer — Kotlin & Java";
  static const String subtitle = "Full Stack Developer & Cloud Engineer";
  static const String location = "Tachileik, Myanmar";
  static const String email = "moekyawaung.mka2030@gmail.com";
  static const String github = "https://github.com/Dev-moe-kyawaung";
  
  static const String experienceYears = "6+ Years";
  static const String appsPlayStore = "15+ Apps";
  static const String usersReached = "200K+ Users";
  static const String happyClients = "10+ Clients";
  
  static const String description = """
I build enterprise-grade native Android apps with Jetpack Compose, MVVM, Clean Architecture, 
and modern Jetpack libraries — from pixel-perfect UIs to scalable offline-first architectures.

Specializing in production-grade mobile solutions with 200K+ users reached, 99.9% uptime, 
and 60fps performance. Passionate about clean code, automated testing, and shipping quality.
  """;
}
