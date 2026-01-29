import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../../../../core/constants/app_constants.dart';
import '../viewmodels/skills_viewmodel.dart';
import 'skill_card.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<SkillsViewModel>(
      builder: (context, viewModel, child) {
        if (viewModel.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }

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
                AppStrings.skillsTitle,
                style: GoogleFonts.cairo(
                  fontSize: isMobile ? 36 : 48,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textWhite,
                ),
              ),
              const SizedBox(height: 50),
              Wrap(
                spacing: 30,
                runSpacing: 30,
                alignment: WrapAlignment.center,
                children: viewModel.skills.map((skill) {
                  return SkillCard(skill: skill);
                }).toList(),
              ),
            ],
          ),
        );
      },
    );
  }
}
