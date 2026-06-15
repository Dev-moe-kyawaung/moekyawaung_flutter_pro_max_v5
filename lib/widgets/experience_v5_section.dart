import 'package:flutter/material.dart';
import 'package/flutter_animate/flutter_animate.dart';
import '../constants/app_data_v5.dart';

class ExperienceV5Section extends StatelessWidget {
  const ExperienceV5Section({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 160, vertical: AppDataV5.sectionPadding),
      child: Column(
        children: [
          _Header(number: "03", title: "Experience"),
          SizedBox(height: AppDataV5.spacingXLarge * 1.5),
          _ExpCard(role: "Senior Android Engineer", company: "Tech Company", period: "2022 - Present", achievements: ["Led migration to Jetpack Compose", "Reduced app size by 40%", "Implemented CI/CD pipelines"]),
          SizedBox(height: AppDataV5.spacingXLarge),
          _ExpCard(role: "Android Developer", company: "Mobile Studio", period: "2019 - 2022", achievements: ["Built apps with 100K+ users", "Implemented offline-first architecture", "90% test coverage"]),
        ],
      ),
    );
  }
}

class _ExpCard extends StatelessWidget {
  final String role, company, period;
  final List<String> achievements;
  const _ExpCard({required this.role, required this.company, required this.period, required this.achievements});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(color: AppDataV5.cardBackground, borderRadius: BorderRadius.circular(24), border: Border.all(color: AppDataV5.primaryColor.withOpacity(0.1))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(children: [
            Container(padding: const EdgeInsets.all(12), decoration: BoxDecoration(gradient: LinearGradient(colors: AppDataV5.gradientPrimary), borderRadius: BorderRadius.circular(12)), child: Text("SR", style: TextStyle(color: AppDataV5.white, fontWeight: FontWeight.w700))),
            SizedBox(width: 16),
            Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text(role, style: TextStyle(color: AppDataV5.white, fontSize: 24, fontWeight: FontWeight.w700)), Text(company, style: TextStyle(color: AppDataV5.primaryColor, fontSize: 18)), Text(period, style: TextStyle(color: AppDataV5.textSecondary, fontSize: 14)])),),
          ]),
          SizedBox(height: 16),
          ...achievements.map((a) => Padding(padding: EdgeInsets.only(bottom: 8), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("▸", style: TextStyle(color: AppDataV5.primaryColor, fontSize: 18)), SizedBox(width: 12), Expanded(child: Text(a, style: TextStyle(color: AppDataV5.textPrimary, fontSize: 16)))]))),
        ],
      ),
    ).animate().fadeIn().slideX(begin: -0.3);
  }
}

class _Header extends StatelessWidget {
  final String number, title;
  const _Header({required this.number, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(number, style: TextStyle(color: AppDataV5.primaryColor, fontSize: 28, fontWeight: FontWeight.w700)),
        SizedBox(width: 16),
        Text(title, style: TextStyle(color: AppDataV5.white, fontSize: AppDataV5.fontSizeSection, fontWeight: FontWeight.w700)),
        SizedBox(width: 16),
        Container(width: 200, height: 2, decoration: BoxDecoration(gradient: LinearGradient(colors: [AppDataV5.primaryColor, AppDataV5.primaryColor.withOpacity(0.1)]))),
      ],
    );
  }
}
