import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../core/constants/app_constants.dart';
import '../../domain/entities/skill.dart';

class SkillCard extends StatefulWidget {
  final Skill skill;

  const SkillCard({super.key, required this.skill});

  @override
  State<SkillCard> createState() => _SkillCardState();
}

class _SkillCardState extends State<SkillCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool _isHovered = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: AppDurations.verySlow,
    );
    _animation = Tween<double>(
      begin: 0,
      end: widget.skill.level,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isMobile =
        MediaQuery.of(context).size.width < AppDimensions.mobileBreakpoint;

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: AppDurations.medium,
        width: isMobile ? MediaQuery.of(context).size.width * 0.4 : 250,
        padding: const EdgeInsets.all(25),
        decoration: BoxDecoration(
          color: _isHovered
              ? AppColors.glassWhite10
              : Colors.white.withValues(alpha: 0.05),
          borderRadius: BorderRadius.circular(AppDimensions.borderRadiusLarge),
          border: Border.all(
            color: _isHovered ? AppColors.glassWhite30 : AppColors.glassWhite10,
          ),
        ),
        child: Column(
          children: [
            FaIcon(widget.skill.icon, size: 50, color: AppColors.gradientCyan),
            const SizedBox(height: 20),
            Text(
              widget.skill.name,
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: AppColors.textWhite,
              ),
            ),
            const SizedBox(height: 15),
            AnimatedBuilder(
              animation: _animation,
              builder: (context, child) {
                return Column(
                  children: [
                    LinearProgressIndicator(
                      value: _animation.value,
                      backgroundColor: AppColors.glassWhite10,
                      valueColor: const AlwaysStoppedAnimation<Color>(
                        AppColors.gradientCyan,
                      ),
                      minHeight: 8,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      '${(_animation.value * 100).toInt()}%',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: AppColors.textWhite70,
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
