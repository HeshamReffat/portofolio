import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'core/theme/app_theme.dart';
import 'core/constants/app_constants.dart';
import 'core/di/injection_container.dart';
import 'features/home/presentation/pages/home_page.dart';
import 'features/home/presentation/viewmodels/home_viewmodel.dart';
import 'features/projects/presentation/viewmodels/projects_viewmodel.dart';
import 'features/skills/presentation/viewmodels/skills_viewmodel.dart';
import 'features/certificates/presentation/viewmodels/certificates_viewmodel.dart';
import 'features/experience/presentation/viewmodels/experience_viewmodel.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await initializeDependencies();
  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('ar')],
      path: 'translations',
      startLocale: const Locale('en'),
      fallbackLocale: const Locale('en'),
      child: const PortfolioApp(),
    ),
  );
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => sl<HomeViewModel>()),
        ChangeNotifierProvider(create: (_) => sl<ProjectsViewModel>()),
        ChangeNotifierProvider(create: (_) => sl<SkillsViewModel>()),
        ChangeNotifierProvider(create: (_) => sl<CertificatesViewModel>()),
        ChangeNotifierProvider(create: (_) => sl<ExperienceViewModel>()),
      ],
      child: MaterialApp(
        title: AppStrings.appTitle,
        debugShowCheckedModeBanner: false,
        theme: AppTheme.darkTheme,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        home: const HomePage(),
      ),
    );
  }
}
