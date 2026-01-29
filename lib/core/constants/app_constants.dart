import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

// App Colors
class AppColors {
  static const Color primaryDark = Color(0xFF0A0E27);
  static const Color secondaryDark = Color(0xFF1a1f3a);
  static const Color accentPurple = Color(0xFF2d1b69);
  static const Color accentCyan = Color(
    0xFF26C6DA,
  ); // Added manually based on gradientCyan

  static const Color gradientPurple = Color(0xFFAB47BC);
  static const Color gradientBlue = Color(0xFF42A5F5);
  static const Color gradientCyan = Color(0xFF26C6DA);
  static const Color gradientPink = Color(0xFFEC407A);

  static const Color textWhite = Colors.white;
  static final Color textWhite70 = Colors.white.withValues(alpha: 0.7);
  static final Color textWhite50 = Colors.white.withValues(alpha: 0.5);

  static final Color glassWhite10 = Colors.white.withValues(alpha: 0.1);
  static final Color glassWhite20 = Colors.white.withValues(alpha: 0.2);
  static final Color glassWhite30 = Colors.white.withValues(alpha: 0.3);
}

// App Dimensions
class AppDimensions {
  static const double paddingSmall = 8.0;
  static const double paddingMedium = 16.0;
  static const double paddingLarge = 24.0;
  static const double paddingXLarge = 32.0;

  static const double borderRadiusSmall = 8.0;
  static const double borderRadiusMedium = 16.0;
  static const double borderRadiusLarge = 24.0;
  static const double borderRadiusXLarge = 30.0;

  static const double iconSizeSmall = 24.0;
  static const double iconSizeMedium = 40.0;
  static const double iconSizeLarge = 60.0;

  // Breakpoints
  static const double mobileBreakpoint = 600.0;
  static const double tabletBreakpoint = 1200.0;
}

// App Strings
class AppStrings {
  static String get appTitle => 'appTitle'.tr();
  static String get yourName => 'yourName'.tr();
  static String get copyright => 'copyright'.tr();
  static const String profilePicture = 'assets/images/profile.jpg';

  // Navigation
  static String get navHome => 'nav.home'.tr();
  static String get navAbout => 'nav.about'.tr();
  static String get navProjects => 'nav.projects'.tr();
  static String get navExperience => 'nav.experience'.tr();
  static String get navSkills => 'nav.skills'.tr();
  static String get navCertificates => 'nav.certificates'.tr();
  static String get navContact => 'nav.contact'.tr();

  // Sections
  static String get aboutTitle => 'sections.about'.tr();
  static String get projectsTitle => 'sections.projects'.tr();
  static String get skillsTitle => 'sections.skills'.tr();
  static String get experienceTitle => 'sections.experience'.tr();
  static String get certificatesTitle => 'sections.certificates'.tr();
  static String get contactTitle => 'sections.contact'.tr();

  // CTA
  static String get ctaViewWork => 'cta.viewWork'.tr();
  static String get ctaContactMe => 'cta.contactMe'.tr();
}

// Animation Durations
class AppDurations {
  static const Duration fast = Duration(milliseconds: 200);
  static const Duration medium = Duration(milliseconds: 300);
  static const Duration slow = Duration(milliseconds: 800);
  static const Duration verySlow = Duration(milliseconds: 1500);
}
