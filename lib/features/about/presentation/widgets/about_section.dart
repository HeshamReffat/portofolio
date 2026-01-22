import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/constants/app_constants.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile =
        MediaQuery.of(context).size.width < AppDimensions.mobileBreakpoint;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 20 : 50,
        vertical: isMobile ? 50 : 100,
      ),
      child: Column(
        children: [
          Text(
            AppStrings.aboutTitle,
            style: GoogleFonts.poppins(
              fontSize: isMobile ? 36 : 48,
              fontWeight: FontWeight.bold,
              color: AppColors.textWhite,
            ),
          ),
          const SizedBox(height: 50),
          Container(
            padding: EdgeInsets.all(isMobile ? 20 : 40),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.05),
              borderRadius: BorderRadius.circular(
                AppDimensions.borderRadiusXLarge,
              ),
              border: Border.all(color: AppColors.glassWhite10),
            ),
            child: Text(
              'Senior Flutter Developer with 4+ years of experience in creating high-performance, cross-platform mobile applications. '
              'Expert in Dart and Flutter, with a proven track record of delivering user-friendly and scalable solutions for both iOS and Android platforms. '
              'Also proficient as an Android Developer (Clean Architecture, MVVM) and PHP Laravel Developer. '
              'Passionate about staying updated with the latest industry trends and best practices.',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: isMobile ? 16 : 20,
                color: AppColors.textWhite.withValues(alpha: 0.8),
                height: 1.8,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
