import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../core/constants/app_constants.dart';

class FloatingNavBar extends StatelessWidget {
  final Function(int) onNavigate;

  const FloatingNavBar({super.key, required this.onNavigate});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        decoration: BoxDecoration(
          color: AppColors.glassWhite10,
          borderRadius: BorderRadius.circular(AppDimensions.borderRadiusXLarge),
          border: Border.all(color: AppColors.glassWhite20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.3),
              blurRadius: 20,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              _NavItem(AppStrings.navHome, () => onNavigate(0)),
              const SizedBox(width: 20),
              _NavItem(AppStrings.navAbout, () => onNavigate(1)),
              const SizedBox(width: 20),
              _NavItem(AppStrings.navExperience, () => onNavigate(2)),
              const SizedBox(width: 20),
              _NavItem(AppStrings.navProjects, () => onNavigate(3)),
              const SizedBox(width: 20),
              _NavItem(AppStrings.navSkills, () => onNavigate(4)),
              const SizedBox(width: 20),
              _NavItem(AppStrings.navCertificates, () => onNavigate(5)),
              const SizedBox(width: 20),
              _NavItem(AppStrings.navContact, () => onNavigate(6)),
              const SizedBox(width: 20),
              const _LanguageToggle(),
            ],
          ),
        ),
      ),
    );
  }
}

class _LanguageToggle extends StatelessWidget {
  const _LanguageToggle();

  @override
  Widget build(BuildContext context) {
    final isArabic = context.locale.languageCode == 'ar';
    return InkWell(
      onTap: () {
        if (isArabic) {
          context.setLocale(const Locale('en'));
        } else {
          context.setLocale(const Locale('ar'));
        }
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: AppColors.accentPurple.withValues(alpha: 0.3),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: AppColors.gradientCyan.withValues(alpha: 0.5)),
        ),
        child: Text(
          isArabic ? 'English' : 'العربية',
          style: GoogleFonts.cairo(
            color: AppColors.textWhite,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

class _NavItem extends StatefulWidget {
  final String title;
  final VoidCallback onTap;

  const _NavItem(this.title, this.onTap);

  @override
  State<_NavItem> createState() => _NavItemState();
}

class _NavItemState extends State<_NavItem> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: AppDurations.fast,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
            color: _isHovered ? AppColors.glassWhite20 : Colors.transparent,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Text(
            widget.title,
            style: GoogleFonts.cairo(
              color: AppColors.textWhite,
              fontSize: 16,
              fontWeight: _isHovered ? FontWeight.w600 : FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
