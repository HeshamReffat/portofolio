import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/utils/glowing_button.dart';
import '../viewmodels/home_viewmodel.dart';

class HeroSection extends StatelessWidget {
  final Animation<double> fadeAnimation;

  const HeroSection({super.key, required this.fadeAnimation});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeViewModel>(
      builder: (context, viewModel, child) {
        if (viewModel.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        final heroData = viewModel.heroData;
        if (heroData == null) return const SizedBox.shrink();

        final isMobile =
            MediaQuery.of(context).size.width < AppDimensions.mobileBreakpoint;
        final horizontalPadding = isMobile ? 20.0 : 50.0;
        final nameFontSize = isMobile ? 40.0 : 64.0;
        final roleFontSize = isMobile ? 24.0 : 32.0;
        final avatarSize = isMobile ? 140.0 : 180.0;
        final iconSize = isMobile ? 70.0 : 100.0;

        return Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
          child: FadeTransition(
            opacity: fadeAnimation,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Animated Avatar
                  TweenAnimationBuilder(
                    tween: Tween<double>(begin: 0, end: 1),
                    duration: const Duration(milliseconds: 1000),
                    builder: (context, double value, child) {
                      return Transform.scale(
                        scale: value,
                        child: Container(
                          width: avatarSize,
                          height: avatarSize,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: const LinearGradient(
                              colors: [
                                AppColors.gradientPurple,
                                AppColors.gradientBlue,
                                AppColors.gradientCyan,
                              ],
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.gradientPurple.withValues(
                                  alpha: 0.5,
                                ),
                                blurRadius: 30,
                                spreadRadius: 5,
                              ),
                            ],
                          ),
                          child: AppStrings.profilePicture.startsWith('http')
                              ? Image.network(
                                  AppStrings.profilePicture,
                                  width: iconSize,
                                  height: iconSize,
                                  fit: BoxFit.cover,
                                )
                              : Image.asset(
                                  AppStrings.profilePicture,
                                  width: iconSize,
                                  height: iconSize,
                                  fit: BoxFit.cover,
                                ),
                          // Icon(
                          //   Icons.person,
                          //   size: iconSize,
                          //   color: AppColors.textWhite,
                          // ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 40),
                  // Name
                  Text(
                    heroData.name,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: nameFontSize,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textWhite,
                      letterSpacing: 2,
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Animated Role
                  SizedBox(
                    height: 60,
                    child: AnimatedTextKit(
                      repeatForever: true,
                      animatedTexts: heroData.roles.map((role) {
                        return TypewriterAnimatedText(
                          role,
                          textAlign: TextAlign.center,
                          textStyle: GoogleFonts.poppins(
                            fontSize: roleFontSize,
                            fontWeight: FontWeight.w300,
                            color: AppColors.gradientCyan,
                          ),
                          speed: const Duration(milliseconds: 100),
                        );
                      }).toList(),
                    ),
                  ),
                  const SizedBox(height: 40),
                  // CTA Button
                  GlowingButton(
                    text: heroData.ctaText,
                    onPressed: () {
                      _launchURL("https://github.com/heshamreffat");
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Future<void> _launchURL(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }
}
