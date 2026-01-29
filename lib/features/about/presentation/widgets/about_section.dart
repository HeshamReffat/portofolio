import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:easy_localization/easy_localization.dart';
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
            style: GoogleFonts.cairo(
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
              'about_text'.tr(),
              textAlign: TextAlign.center,
              style: GoogleFonts.cairo(
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
