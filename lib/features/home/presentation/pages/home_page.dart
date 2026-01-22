import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../core/utils/animated_background.dart';
import '../../../../core/utils/floating_nav_bar.dart';
import '../widgets/hero_section.dart';
import '../../../about/presentation/widgets/about_section.dart';
import '../../../projects/presentation/widgets/projects_section.dart';
import '../../../skills/presentation/widgets/skills_section.dart';
import '../../../contact/presentation/widgets/contact_section.dart';
import '../../../experience/presentation/widgets/experience_section.dart';
import '../../../certificates/presentation/widgets/certificates_section.dart';
import '../viewmodels/home_viewmodel.dart';
import '../../../projects/presentation/viewmodels/projects_viewmodel.dart';
import '../../../skills/presentation/viewmodels/skills_viewmodel.dart';
import '../../../certificates/presentation/viewmodels/certificates_viewmodel.dart';
import '../../../experience/presentation/viewmodels/experience_viewmodel.dart';
import '../../../../core/constants/app_constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  final ScrollController _scrollController = ScrollController();
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;

  // Section Keys
  final GlobalKey _homeKey = GlobalKey();
  final GlobalKey _aboutKey = GlobalKey();
  final GlobalKey _experienceKey = GlobalKey();
  final GlobalKey _projectsKey = GlobalKey();
  final GlobalKey _skillsKey = GlobalKey();
  final GlobalKey _certificatesKey = GlobalKey();
  final GlobalKey _contactKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: AppDurations.verySlow,
    );
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
    _animationController.forward();

    // Load data from ViewModels
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<HomeViewModel>().loadHeroData();
      context.read<ProjectsViewModel>().loadProjects();
      context.read<SkillsViewModel>().loadSkills();
      context.read<CertificatesViewModel>().loadCertificates();
      context.read<ExperienceViewModel>().loadExperience();
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  void _scrollToSection(int index) {
    GlobalKey key;
    switch (index) {
      case 0:
        key = _homeKey;
        break;
      case 1:
        key = _aboutKey;
        break;
      case 2:
        key = _experienceKey;
        break;
      case 3:
        key = _projectsKey;
        break;
      case 4:
        key = _skillsKey;
        break;
      case 5:
        key = _certificatesKey;
        break;
      case 6:
        key = _contactKey;
        break;
      default:
        return;
    }

    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: AppDurations.slow,
        curve: Curves.easeInOut,
        alignment:
            0.1, // Align slightly below top to account for padding/header if needed
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryDark,
      body: Stack(
        children: [
          // Animated background gradient
          const AnimatedBackground(),
          // Main content
          SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: [
                HeroSection(key: _homeKey, fadeAnimation: _fadeAnimation),
                AboutSection(key: _aboutKey),
                ExperienceSection(key: _experienceKey),
                ProjectsSection(key: _projectsKey),
                SkillsSection(key: _skillsKey),
                CertificatesSection(key: _certificatesKey),
                ContactSection(key: _contactKey),
              ],
            ),
          ),
          // Floating navigation bar
          Positioned(
            top: 20,
            left: 0,
            right: 0,
            child: FloatingNavBar(onNavigate: _scrollToSection),
          ),
        ],
      ),
    );
  }
}
