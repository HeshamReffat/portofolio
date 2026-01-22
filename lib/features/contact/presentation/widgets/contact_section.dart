import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../core/constants/app_constants.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  Future<void> _launchURL(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }

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
            AppStrings.contactTitle,
            style: GoogleFonts.poppins(
              fontSize: isMobile ? 36 : 48,
              fontWeight: FontWeight.bold,
              color: AppColors.textWhite,
            ),
          ),
          const SizedBox(height: 30),
          Text(
            AppStrings.ctaContactMe,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: isMobile ? 16 : 20,
              color: AppColors.textWhite70,
            ),
          ),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _SocialButton(
                icon: FontAwesomeIcons.github,
                color: AppColors.gradientPurple,
                onTap: () => _launchURL('https://github.com/HeshamReffat'),
              ),
              const SizedBox(width: 20),
              _SocialButton(
                icon: FontAwesomeIcons.linkedin,
                color: AppColors.gradientBlue,
                onTap: () =>
                    _launchURL('https://www.linkedin.com/in/hesham-reffat'),
              ),
              const SizedBox(width: 20),
              _SocialButton(
                icon: FontAwesomeIcons.envelope,
                color: AppColors.gradientPink,
                onTap: () => _launchURL('mailto:heshamreffat60@gmail.com'),
              ),
            ],
          ),
          const SizedBox(height: 50),
          Text(
            AppStrings.copyright,
            style: GoogleFonts.poppins(
              fontSize: 14,
              color: AppColors.textWhite50,
            ),
          ),
        ],
      ),
    );
  }
}

class _SocialButton extends StatefulWidget {
  final IconData icon;
  final Color color;
  final VoidCallback onTap;

  const _SocialButton({
    required this.icon,
    required this.color,
    required this.onTap,
  });

  @override
  State<_SocialButton> createState() => _SocialButtonState();
}

class _SocialButtonState extends State<_SocialButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: AppDurations.medium,
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _isHovered
                ? widget.color.withValues(alpha: 0.3)
                : AppColors.glassWhite10,
            border: Border.all(
              color: _isHovered ? widget.color : AppColors.glassWhite20,
              width: 2,
            ),
            boxShadow: _isHovered
                ? [
                    BoxShadow(
                      color: widget.color.withValues(alpha: 0.5),
                      blurRadius: 20,
                      spreadRadius: 2,
                    ),
                  ]
                : [],
          ),
          child: Center(
            child: FaIcon(
              widget.icon,
              color: _isHovered ? widget.color : AppColors.textWhite,
              size: 24,
            ),
          ),
        ),
      ),
    );
  }
}
