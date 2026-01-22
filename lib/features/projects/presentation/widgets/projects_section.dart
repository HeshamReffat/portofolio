import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../../../../core/constants/app_constants.dart';
import '../viewmodels/projects_viewmodel.dart';
import 'project_card.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ProjectsViewModel>(
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
                AppStrings.projectsTitle,
                style: GoogleFonts.poppins(
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
                children: viewModel.projects.map((project) {
                  return ProjectCard(project: project);
                }).toList(),
              ),
            ],
          ),
        );
      },
    );
  }
}
