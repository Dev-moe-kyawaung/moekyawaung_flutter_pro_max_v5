import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../constants/app_data_v5.dart';

class SkillsV5Section extends StatelessWidget {
  const SkillsV5Section({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 160, vertical: AppDataV5.sectionPadding),
      child: Column(
        children: [
          _Header(number: "02", title: "Skills & Technologies"),
          SizedBox(height: AppDataV5.spacingXLarge * 1.5),
          _SkillsCategory(title: "Android", skills: AppDataV5.skillsAndroid),
          SizedBox(height: AppDataV5.spacingXLarge),
          _SkillsCategory(title: "Flutter", skills: AppDataV5.skillsFlutter),
        ],
      ),
    );
  }
}

class _SkillsCategory extends StatelessWidget {
  final String title;
  final List<String> skills;
  const _SkillsCategory({required this.title, required this.skills});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(28),
      decoration: BoxDecoration(color: AppDataV5.cardBackground, borderRadius: BorderRadius.circular(24), border: Border.all(color: AppDataV5.primaryColor.withOpacity(0.1))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: TextStyle(color: AppDataV5.white, fontSize: 24, fontWeight: FontWeight.w700)),
          SizedBox(height: 16),
          Wrap(spacing: 10, runSpacing: 10, children: skills.map((s) => Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
            decoration: BoxDecoration(color: AppDataV5.darkerBackground, borderRadius: BorderRadius.circular(8), border: Border.all(color: AppDataV5.primaryColor.withOpacity(0.3))),
            child: Text(s, style: TextStyle(color: AppDataV5.primaryColor, fontSize: 14)),
          )).toList()),
        ],
      ),
    ).animate().fadeIn().scale(begin: Offset(0.95, 0.95));
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
