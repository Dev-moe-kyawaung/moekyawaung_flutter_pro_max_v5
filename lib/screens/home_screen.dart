import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../widgets/hero_v5_pro_max.dart';
import '../widgets/projects_v5_section.dart';
import '../widgets/skills_v5_section.dart';
import '../widgets/experience_v5_section.dart';
import '../widgets/contact_v5_section.dart';
import '../widgets/footer_v5.dart';

class HomeScreenV5 extends StatefulWidget {
  final Function()? themeToggle;
  
  const HomeScreenV5({super.key, this.themeToggle});

  @override
  State<HomeScreenV5> createState() => _HomeScreenV5State();
}

class _HomeScreenV5State extends State<HomeScreenV5> {
  final ScrollController _scrollController = ScrollController();
  int _activeSection = 0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    final position = _scrollController.offset;
    int newSection = 0;
    
    if (position > 1000) newSection = 1;
    if (position > 2200) newSection = 2;
    if (position > 3400) newSection = 3;
    if (position > 4600) newSection = 4;
    
    if (newSection != _activeSection) {
      setState(() => _activeSection = newSection);
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppDataV5.darkBackground,
      body: Stack(
        children: [
          CustomScrollView(
            controller: _scrollController,
            slivers: [
              HeroV5ProMax(),
              ProjectsV5Section(),
              SkillsV5Section(),
              ExperienceV5Section(),
              ContactV5Section(),
              FooterV5(),
            ],
          ),
        ],
      ),
    );
  }
}
