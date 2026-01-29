import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../../../core/constants/app_constants.dart';
import '../viewmodels/certificates_viewmodel.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CertificatesSection extends StatelessWidget {
  const CertificatesSection({super.key});

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
            AppStrings.certificatesTitle,
            style: GoogleFonts.cairo(
              fontSize: isMobile ? 36 : 48,
              fontWeight: FontWeight.bold,
              color: AppColors.textWhite,
            ),
          ),
          const SizedBox(height: 50),
          Consumer<CertificatesViewModel>(
            builder: (context, viewModel, _) {
              if (viewModel.isLoading) {
                return const CircularProgressIndicator();
              }

              return Wrap(
                spacing: 30,
                runSpacing: 30,
                alignment: WrapAlignment.center,
                children: viewModel.certificates
                    .map((cert) => _CertificateCard(certificate: cert))
                    .toList(),
              );
            },
          ),
        ],
      ),
    );
  }
}

class _CertificateCard extends StatefulWidget {
  final dynamic certificate;

  const _CertificateCard({required this.certificate});

  @override
  State<_CertificateCard> createState() => _CertificateCardState();
}

class _CertificateCardState extends State<_CertificateCard> {
  bool _isHovered = false;

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

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: GestureDetector(
        onTapDown: (_) => setState(() => _isHovered = true),
        onTapUp: (_) => setState(() => _isHovered = false),
        onTapCancel: () => setState(() => _isHovered = false),
        onTap: () => _launchURL(widget.certificate.credentialUrl),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          width: isMobile ? MediaQuery.of(context).size.width * 0.9 : 300,
          padding: const EdgeInsets.all(25),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(_isHovered ? 0.1 : 0.05),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: _isHovered
                  ? AppColors.accentPurple
                  : Colors.white.withOpacity(0.1),
              width: 2,
            ),
            boxShadow: _isHovered
                ? [
                    BoxShadow(
                      color: AppColors.accentPurple.withOpacity(0.3),
                      blurRadius: 20,
                      spreadRadius: 2,
                    ),
                  ]
                : [],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                FontAwesomeIcons.certificate,
                color: _isHovered
                    ? AppColors.accentPurple
                    : AppColors.accentCyan,
                size: 40,
              ),
              const SizedBox(height: 20),
              Text(
                (widget.certificate.title as String).tr(),
                style: GoogleFonts.cairo(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                widget.certificate.issuer,
                style: GoogleFonts.cairo(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColors.accentCyan,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                widget.certificate.date,
                style: GoogleFonts.cairo(
                  fontSize: 12,
                  color: Colors.white.withOpacity(0.6),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    'view_credential'.tr(),
                    style: GoogleFonts.cairo(
                      fontSize: 12,
                      color: _isHovered
                          ? AppColors.accentPurple
                          : Colors.white.withOpacity(0.6),
                      decoration: _isHovered
                          ? TextDecoration.underline
                          : TextDecoration.none,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 10,
                    color: _isHovered
                        ? AppColors.accentPurple
                        : Colors.white.withOpacity(0.6),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
