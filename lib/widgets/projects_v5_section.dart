import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_tilt_card/flutter_tilt_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants/app_data_v5.dart';

class ProjectsV5Section extends StatelessWidget {
  const ProjectsV5Section({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 160, vertical: AppDataV5.sectionPadding),
      child: Column(
        children: [
          _Header(number: "01", title: "Featured Projects"),
          SizedBox(height: AppDataV5.spacingXLarge * 1.5),
          ...AppDataV5.projects.asMap().entries.map((e) => Padding(
            padding: EdgeInsets.only(bottom: AppDataV5.spacingXLarge),
            child: _ProjectCard(project: e.value, index: e.key),
          )),
        ],
      ),
    );
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

class _ProjectCard extends StatefulWidget {
  final Map<String, dynamic> project;
  final int index;
  const _ProjectCard({required this.project, required this.index});

  @override
  State<_ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<_ProjectCard> {
  bool _hover = false;

  @override
  Widget build(BuildContext context) {
    return FlutterTiltCard(
      maximumAngle: 15,
      child: MouseRegion(
        onEnter: (_) => setState(() => _hover = true),
        onExit: (_) => setState(() => _hover = false),
        child: Container(
          padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
            color: AppDataV5.cardBackground,
            borderRadius: BorderRadius.circular(24),
            border: Border.all(color: _hover ? AppDataV5.primaryColor.withOpacity(0.5) : AppDataV5.primaryColor.withOpacity(0.1)),
            boxShadow: _hover ? [BoxShadow(color: AppDataV5.primaryColor.withOpacity(0.2), blurRadius: 40, spreadRadius: 10)] : [],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(gradient: LinearGradient(colors: AppDataV5.gradientPrimary), borderRadius: BorderRadius.circular(16)),
                    child: Icon(widget.project["icon"] == "fitness" ? FontAwesomeIcons.dumbbell : widget.project["icon"] == "shopping" ? FontAwesomeIcons.bagShopping : FontAwesomeIcons.spa, color: AppDataV5.white, size: 28),
                  ),
                  SizedBox(width: 16),
                  Expanded(child: Text(widget.project["title"], style: TextStyle(color: AppDataV5.white, fontSize: AppDataV5.fontSizeXXLarge, fontWeight: FontWeight.w700))),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(color: AppDataV5.secondaryColor.withOpacity(0.1), borderRadius: BorderRadius.circular(6), border: Border.all(color: AppDataV5.secondaryColor.withOpacity(0.3))),
                    child: Text(widget.project["category"], style: TextStyle(color: AppDataV5.secondaryColor, fontSize: 12)),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Text(widget.project["description"], style: TextStyle(color: AppDataV5.textPrimary, fontSize: 16)),
              SizedBox(height: 16),
              Wrap(spacing: 10, runSpacing: 10, children: (widget.project["tech"] as List<String>).map((t) => Container(
                padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                decoration: BoxDecoration(color: AppDataV5.darkerBackground, borderRadius: BorderRadius.circular(8), border: Border.all(color: AppDataV5.primaryColor.withOpacity(0.3))),
                child: Text(t, style: TextStyle(color: AppDataV5.primaryColor, fontSize: 13)),
              )).toList()),
            ],
          ),
        ),
      ),
    ).animate().fadeIn(delay: Duration(milliseconds: 200 * widget.index + 200)).slideX(begin: widget.index % 2 == 0 ? -0.3 : 0.3).scale(begin: Offset(0.95, 0.95));
  }
}
