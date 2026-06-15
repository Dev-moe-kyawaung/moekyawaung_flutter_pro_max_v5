import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import '../constants/app_data_v5.dart';

class HeroV5ProMax extends StatelessWidget {
  const HeroV5ProMax({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDataV5.heroHeight,
      child: Stack(
        children: [
          _1000ParticleBackground(),
          _GradientMeshBackground(),
          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 160),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _ UltimateBadge(),
                SizedBox(height: AppDataV5.spacingMedium),
                _GlitchText(text: AppDataV5.name),
                SizedBox(height: AppDataV5.spacingSmall),
                _GradientTitle(text: AppDataV5.title),
                SizedBox(height: AppDataV5.spacingMedium),
                Text(
                  AppDataV5.subtitle,
                  style: TextStyle(
                    color: AppDataV5.textSecondary,
                    fontSize: AppDataV5.fontSizeXLarge,
                  ),
                ),
                SizedBox(height: AppDataV5.spacingXLarge * 1.5),
                _DescriptionCard(),
                SizedBox(height: AppDataV5.spacingXLarge * 2),
                _ActionButtons(),
                SizedBox(height: AppDataV5.spacingXLarge),
                _StatsGrid(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _UltimateBadge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: AppDataV5.gradientPrimary),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: AppDataV5.primaryColor.withOpacity(0.4),
            blurRadius: 30,
            spreadRadius: 5,
          ),
        ],
      ),
      child: Text(
        "Flutter Pro Max V5 Ultimate",
        style: TextStyle(
          color: AppDataV5.darkerBackground,
          fontSize: AppDataV5.fontSizeSmall,
          fontWeight: FontWeight.w700,
        ),
      ),
    ).animate().fadeIn().scale(begin: Offset(0.8, 0.8));
  }
}

class _GlitchText extends StatefulWidget {
  final String text;
  const _GlitchText({required this.text});

  @override
  State<_GlitchText> createState() => _GlitchTextState();
}

class _GlitchTextState extends State<_GlitchText> {
  bool _glitch = false;
  
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      setState(() => _glitch = true);
      Future.delayed(Duration(milliseconds: 150), () {
        setState(() => _glitch = false);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Text(
          widget.text,
          style: TextStyle(
            color: AppDataV5.white,
            fontSize: AppDataV5.fontSizeHero,
            fontWeight: FontWeight.w800,
          ),
        ),
        if (_glitch)
          Positioned.fill(
            child: Text(
              widget.text,
              style: TextStyle(
                color: AppDataV5.accentColor,
                fontSize: AppDataV5.fontSizeHero,
                fontWeight: FontWeight.w800,
                offset: Offset(3, 0),
              ),
            ),
          ),
      ],
    ).animate().fadeIn(delay: 200.ms).slideX(begin: -0.3);
  }
}

class _GradientTitle extends StatelessWidget {
  final String text;
  const _GradientTitle({required this.text});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
        colors: AppDataV5.gradientSecondary,
      ).createShader(bounds),
      child: Text(
        text,
        style: TextStyle(
          color: AppDataV5.white,
          fontSize: AppDataV5.fontSizeXLarge,
          fontWeight: FontWeight.w700,
        ),
      ),
    ).animate().fadeIn(delay: 400.ms).slideX(begin: -0.3);
  }
}

class _DescriptionCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        color: AppDataV5.cardBackground.withOpacity(0.6),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: AppDataV5.primaryColor.withOpacity(0.15)),
      ),
      child: Text(
        AppDataV5.description,
        style: TextStyle(
          color: AppDataV5.textPrimary,
          fontSize: AppDataV5.fontSizeMedium,
        ),
        maxLines: 4,
      ),
    ).animate().fadeIn(delay: 600.ms).slideY(begin: 0.2);
  }
}

class _ActionButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _Button(
          text: "View Projects",
          icon: FontAwesomeIcons.briefcase,
          variant: ButtonVariant.primary,
        ),
        SizedBox(width: AppDataV5.spacingXLarge),
        _Button(
          text: "Contact Me",
          icon: FontAwesomeIcons.envelope,
          variant: ButtonVariant.glass,
          onTap: () => launchUrl(Uri.parse("mailto:${AppDataV5.email}")),
        ),
      ],
    ).animate().fadeIn(delay: 800.ms);
  }
}

enum ButtonVariant { primary, glass }

class _Button extends StatelessWidget {
  final String text;
  final IconData icon;
  final ButtonVariant variant;
  final VoidCallback? onTap;
  
  const _Button({
    required this.text,
    required this.icon,
    required this.variant,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    if (variant == ButtonVariant.primary) {
      return Container(
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: AppDataV5.gradientPrimary),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: AppDataV5.primaryColor.withOpacity(0.4),
              blurRadius: 30,
            ),
          ],
        ),
        child: Material(
          color: AppDataV5.primaryColor,
          borderRadius: BorderRadius.circular(16),
          child: InkWell(
            onTap: onTap,
            borderRadius: BorderRadius.circular(16),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 20),
              child: Row(
                children: [
                  Icon(icon, color: AppDataV5.darkerBackground, size: 20),
                  SizedBox(width: 8),
                  Text(text, style: TextStyle(
                    color: AppDataV5.darkerBackground,
                    fontSize: AppDataV5.fontSizeMedium,
                    fontWeight: FontWeight.w700,
                  )),
                ],
              ),
            ),
          ),
        ),
      ).animate().fadeIn().scale().then().shake();
    }
    
    return GlassmorphicContainer(
      borderRadius: 16,
      blur: 15,
      alpha: 0.8,
      border: 2,
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(16),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(16),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 20),
            child: Row(
              children: [
                Icon(icon, color: AppDataV5.primaryColor, size: 20),
                SizedBox(width: 8),
                Text(text, style: TextStyle(
                  color: AppDataV5.primaryColor,
                  fontSize: AppDataV5.fontSizeMedium,
                  fontWeight: FontWeight.w600,
                )),
              ],
            ),
          ),
        ),
      ),
    ).animate().fadeIn(delay: 200.ms).scale();
  }
}

class _StatsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _StatCard(icon: FontAwesomeIcons.code, value: AppDataV5.experienceYears, label: "Experience"),
        SizedBox(width: AppDataV5.spacingXLarge),
        _StatCard(icon: FontAwesomeIcons.appStore, value: AppDataV5.appsPlayStore, label: "Apps"),
        SizedBox(width: AppDataV5.spacingXLarge),
        _StatCard(icon: FontAwesomeIcons.users, value: AppDataV5.usersReached, label: "Users"),
        SizedBox(width: AppDataV5.spacingXLarge),
        _StatCard(icon: FontAwesomeIcons.heart, value: AppDataV5.happyClients, label: "Clients"),
      ],
    ).animate().fadeIn(delay: 1000.ms);
  }
}

class _StatCard extends StatefulWidget {
  final IconData icon;
  final String value;
  final String label;
  
  const _StatCard({required this.icon, required this.value, required this.label});

  @override
  State<_StatCard> createState() => _StatCardState();
}

class _StatCardState extends State<_StatCard> {
  bool _hover = false;
  
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _hover = true),
      onExit: (_) => setState(() => _hover = false),
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: AppDataV5.cardBackground,
          borderRadius: BorderRadius.circular(24),
          border: Border.all(color: _hover ? AppDataV5.primaryColor.withOpacity(0.5) : AppDataV5.primaryColor.withOpacity(0.15)),
          boxShadow: _hover ? [
            BoxShadow(color: AppDataV5.primaryColor.withOpacity(0.3), blurRadius: 30, spreadRadius: 8),
          ] : [],
        ),
        child: Column(
          children: [
            Icon(widget.icon, color: AppDataV5.primaryColor, size: 28),
            SizedBox(height: 8),
            Text(widget.value, style: TextStyle(color: AppDataV5.white, fontSize: AppDataV5.fontSizeLarge, fontWeight: FontWeight.w700)),
            SizedBox(height: 4),
            Text(widget.label, style: TextStyle(color: AppDataV5.textSecondary, fontSize: AppDataV5.fontSizeSmall)),
          ],
        ),
      ),
    ).animate().fadeIn().slideX(begin: 0.3);
  }
}

class _1000ParticleBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned.fill(child: CustomPaint(painter: _ParticlePainter()));
  }
}

class _ParticlePainter extends CustomPainter {
  final particles = List.generate(1000, (_) => _Particle());
  
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint().color = AppDataV5.primaryColor.withOpacity(0.4).withAlpha(100);
    for (var p in particles) {
      canvas.drawCircle(Offset(p.x, p.y), p.size, paint);
      p.update(size);
    }
  }
  
  @override
  bool shouldRepaint(_) => true;
}

class _Particle {
  double x = Random().nextDouble() * 1000;
  double y = Random().nextDouble() * 1000;
  double size = Random().nextDouble() * 3 + 1;
  double speed = Random().nextDouble() * 0.5;
  
  void update(Size size) {
    y += speed;
    if (y > size.height) y = 0;
  }
}

class _GradientMeshBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: CustomPaint(
        painter: _GradientMeshPainter(),
      ),
    );
  }
}

class _GradientMeshPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final gradient = Gradient.sweep(
      colors: [
        AppDataV5.primaryColor.withOpacity(0.1),
        AppDataV5.secondaryColor.withOpacity(0.08),
        AppDataV5.accentColor.withOpacity(0.05),
      ],
    );
    canvas.drawRect(size.toRect(), Paint().shader = gradient.createShader(size.toRect()));
  }
}
