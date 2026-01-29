import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/constants/app_constants.dart';
import '../../domain/entities/project.dart';

class ProjectCard extends StatefulWidget {
  final Project project;

  const ProjectCard({super.key, required this.project});

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final isMobile =
        MediaQuery.of(context).size.width < AppDimensions.mobileBreakpoint;

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: GestureDetector(
        onTapDown: (_) => setState(() => _isHovered = true),
        onTapUp: (_) => setState(() => _isHovered = false),
        onTapCancel: () => setState(() => _isHovered = false),
        child: AnimatedContainer(
          duration: AppDurations.medium,
          width: isMobile ? MediaQuery.of(context).size.width * 0.9 : 350,
          constraints: const BoxConstraints(
            minHeight: 450,
          ),
          transform: Matrix4.translationValues(
            0.0,
            _isHovered ? -10.0 : 0.0,
            0.0,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              AppDimensions.borderRadiusXLarge,
            ),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                widget.project.color.withValues(alpha: 0.3),
                widget.project.color.withValues(alpha: 0.1),
              ],
            ),
            border: Border.all(
              color: _isHovered
                  ? widget.project.color.withValues(alpha: 0.8)
                  : AppColors.glassWhite10,
              width: 2,
            ),
            boxShadow: _isHovered
                ? [
                    BoxShadow(
                      color: widget.project.color.withValues(alpha: 0.4),
                      blurRadius: 30,
                      spreadRadius: 5,
                    ),
                  ]
                : [],
          ),
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.code, size: 50, color: widget.project.color),
                const SizedBox(height: 20),
                Text(
                  widget.project.title,
                  style: GoogleFonts.cairo(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textWhite,
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  widget.project.description,
                  style: GoogleFonts.cairo(
                    fontSize: 16,
                    color: AppColors.textWhite70,
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 30),
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: widget.project.technologies.map((tech) {
                    return Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: widget.project.color.withValues(alpha: 0.3),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: widget.project.color.withValues(alpha: 0.5),
                        ),
                      ),
                      child: Text(
                        tech,
                        style: GoogleFonts.cairo(
                          fontSize: 12,
                          color: AppColors.textWhite,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
