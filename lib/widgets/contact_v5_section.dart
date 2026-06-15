import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import '../constants/app_data_v5.dart';

class ContactV5Section extends StatelessWidget {
  const ContactV5Section({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 160, vertical: AppDataV5.sectionPadding),
      child: Column(
        children: [
          Text("04.", style: TextStyle(color: AppDataV5.primaryColor, fontSize: 28, fontWeight: FontWeight.w700)).animate().fadeIn(),
          SizedBox(height: 16),
          Text("Get In Touch", style: TextStyle(color: AppDataV5.white, fontSize: AppDataV5.fontSizeSection, fontWeight: FontWeight.w700)).animate().fadeIn(delay: 200.ms).slideY(begin: 0.2),
          SizedBox(height: AppDataV5.spacingLarge),
          Text("I'm available for freelance work. Let's build something amazing!", style: TextStyle(color: AppDataV5.textPrimary, fontSize: 16), textAlign: TextAlign.center).animate().fadeIn(delay: 400.ms),
          SizedBox(height: AppDataV5.spacingXLarge * 2),
          Container(
            padding: const EdgeInsets.all(1),
            decoration: BoxDecoration(gradient: LinearGradient(colors: AppDataV5.gradientPrimary), borderRadius: BorderRadius.circular(16)),
            child: Material(color: AppDataV5.primaryColor, borderRadius: BorderRadius.circular(16), child: InkWell(
              onTap: () => launchUrl(Uri.parse("mailto:${AppDataV5.email}")),
              borderRadius: BorderRadius.circular(16),
              child: Padding(padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20), child: Row(mainAxisSize: MainAxisSize.min, children: [Icon(FontAwesomeIcons.envelope, color: AppDataV5.darkerBackground, size: 20), SizedBox(width: 12), Text("Say Hello", style: TextStyle(color: AppDataV5.darkerBackground, fontSize: 18, fontWeight: FontWeight.w700))])),
            )),
          ).animate().fadeIn(delay: 600.ms).scale(begin: Offset(0.9, 0.9)).then().shake(),
          SizedBox(height: AppDataV5.spacingXLarge * 2),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            _ContactCard(icon: FontAwesomeIcons.github, title: "GitHub", value: "Dev-moe-kyawaung", url: AppDataV5.github),
            SizedBox(width: AppDataV5.spacingXLarge),
            _ContactCard(icon: FontAwesomeIcons.envelope, title: "Email", value: AppDataV5.email, url: "mailto:${AppDataV5.email}"),
            SizedBox(width: AppDataV5.spacingXLarge),
            _ContactCard(icon: FontAwesomeIcons.locationDot, title: "Location", value: AppDataV5.location, url: ""),
          ]).animate().fadeIn(delay: 800.ms).slideY(begin: 0.3),
        ],
      ),
    );
  }
}

class _ContactCard extends StatelessWidget {
  final IconData icon;
  final String title, value, url;
  const _ContactCard({required this.icon, required this.title, required this.value, required this.url});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppDataV5.cardBackground,
      borderRadius: BorderRadius.circular(16),
      border: Border.all(color: AppDataV5.primaryColor.withOpacity(0.2)),
      child: InkWell(onTap: url.isNotEmpty ? () => launchUrl(Uri.parse(url)) : null, borderRadius: BorderRadius.circular(16), child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(children: [
          Container(padding: const EdgeInsets.all(12), decoration: BoxDecoration(gradient: LinearGradient(colors: AppDataV5.gradientPrimary), borderRadius: BorderRadius.circular(12)), child: Icon(icon, color: AppDataV5.white, size: 24)),
          SizedBox(height: 12),
          Text(title, style: TextStyle(color: AppDataV5.textSecondary, fontSize: 12)),
          SizedBox(height: 4),
          Text(value, style: TextStyle(color: AppDataV5.primaryColor, fontSize: 14, fontWeight: FontWeight.w600), textAlign: TextAlign.center, maxLines: 2),
        ]),
      )),
    ).animate().fadeIn(delay: 1000.ms).scale(begin: Offset(0.95, 0.95));
  }
}
