import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import '../constants/app_data_v5.dart';

class FooterV5 extends StatelessWidget {
  const FooterV5({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 160, vertical: 50),
      color: AppDataV5.darkerBackground,
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            _Social(icon: FontAwesomeIcons.github, url: AppDataV5.github),
            SizedBox(width: 24),
            _Social(icon: FontAwesomeIcons.envelope, url: "mailto:${AppDataV5.email}"),
          ]),
          SizedBox(height: 16),
          Text("Built with ❤️ using Flutter Pro Max V5", style: TextStyle(color: AppDataV5.primaryColor, fontSize: 14)),
          SizedBox(height: 8),
          Text("© 2026 Moe Kyaw Aung. All rights reserved.", style: TextStyle(color: AppDataV5.textSecondary, fontSize: 13)),
        ],
      ),
    );
  }
}

class _Social extends StatelessWidget {
  final IconData icon;
  final String url;
  const _Social({required this.icon, required this.url});

  @override
  Widget build(BuildContext context) {
    return Material(color: AppDataV5.cardBackground, borderRadius: BorderRadius.circular(10), child: InkWell(onTap: () => launchUrl(Uri.parse(url)), borderRadius: BorderRadius.circular(10), child: Padding(padding: const EdgeInsets.all(12), child: Icon(icon, color: AppDataV5.primaryColor, size: 20))));
  }
}
