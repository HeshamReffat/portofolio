import '../models/experience_model.dart';

abstract class ExperienceLocalDataSource {
  Future<List<ExperienceModel>> getExperience();
}

class ExperienceLocalDataSourceImpl implements ExperienceLocalDataSource {
  @override
  Future<List<ExperienceModel>> getExperience() async {
    await Future.delayed(const Duration(milliseconds: 100));

    return const [
      ExperienceModel(
        company: 'Microtec Saudi',
        role: 'Senior Flutter Developer',
        period: 'November 2024 - Present',
        description:
            '• Building Mobile ERP Apps CrossPlatform for Android and iOS.\n'
            '• Integrating with APIs and Native SDKs.\n'
            '• Implementing local database solutions.\n'
            '• Creating and maintaining Flutter packages.',
        technologies: ['Flutter', 'Dart', 'ERP', 'Rest API'],
      ),
      ExperienceModel(
        company: 'IMS Corp',
        role: 'Senior Flutter Developer',
        period: 'March 2024 - April 2024',
        description:
            '• Developed mobile applications using Flutter, Dart, and Firebase.\n'
            '• Working on Hawaha Dent application.\n'
            '• Met customer expectations with fresh UI/UX.',
        technologies: ['Flutter', 'Firebase', 'UI/UX'],
      ),
      ExperienceModel(
        company: 'BuyBackArt',
        role: 'Senior Flutter Developer',
        period: 'March 2023 - August 2023',
        description:
            '• Developed cross-platform mobile applications using Flutter and Dart.\n'
            '• Deployed to both Apple App Store and Google Play.\n'
            '• Integrating with APIs.',
        technologies: ['Flutter', 'Dart', 'App Store', 'Google Play'],
      ),
      ExperienceModel(
        company: 'E-Motion',
        role: 'Senior Flutter Developer',
        period: 'February 2022 - November 2024',
        description:
            'Digital creative solutions agency.\n'
            '• Specialized in rich media creations and unique artistic applications.\n'
            '• Developed and maintained multiple high-performance applications.',
        technologies: ['Flutter', 'Dart', 'Rich Media'],
      ),
      ExperienceModel(
        company: 'Ready Worx',
        role: 'Flutter Developer',
        period: 'February 2021 - November 2021',
        description:
            '• Building Mobile Apps CrossPlatform for Android and iOS.\n'
            '• Integrating with APIs.\n'
            '• Version Control: Git for source code management.',
        technologies: ['Flutter', 'Git', 'API Integration'],
      ),
      ExperienceModel(
        company: 'WitFit',
        role: 'Flutter Developer',
        period: 'Denmark (Remote)',
        description:
            'Tailored course platform with courses, lectures, chats, and exercises.\n'
            '• Worked with professional psychologists and coaches.',
        technologies: ['Flutter', 'Remote', 'Education'],
      ),
    ];
  }
}
