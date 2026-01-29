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
            '• MicrotecSaudi offers IT system data services, focusing on cloud ERP solutions.\n'
            '• Building Mobile ERP Apps CrossPlatform for android and IOS.\n'
            '• Integrating with apis and native SDKs.\n'
            '• Use local database and creating flutter packages.\n'
            '• Collaboration with team to solve difficult problems or tasks.',
        technologies: ['Flutter', 'Dart', 'ERP', 'Rest API', 'Native SDKs'],
      ),
      ExperienceModel(
        company: 'E-Motion',
        role: 'Senior Flutter Developer',
        period: 'February 2022 - November 2024',
        description:
            '• E-motion digital creative solutions agency established in June 1998 in Egypt.\n'
            '• Building Mobile E-Commerce Apps CrossPlatform for android and IOS.\n'
            '• Integration with native SDKs and apis.\n'
            '• Pushing to app gallery, app store and play store.',
        technologies: ['Flutter', 'Dart', 'E-Commerce', 'SDK Integration'],
      ),
      ExperienceModel(
        company: 'IMS Corp',
        role: 'Senior Flutter Developer',
        period: 'March 2024 - April 2024',
        description:
            '• Developed mobile applications using Flutter, Dart, and Firebase.\n'
            '• Met customer expectations with fast loading time, fresh UI/UX, and easy navigation.\n'
            '• Pushing to app store and play store.',
        technologies: ['Flutter', 'Firebase', 'UI/UX', 'Mobile App'],
      ),
      ExperienceModel(
        company: 'QuickSeat SA',
        role: 'Senior Flutter Developer',
        period: 'May 2023 – December 2023',
        description:
            '• Building Mobile Reservation Management App CrossPlatform for android and IOS.\n'
            '• Developed using Flutter, Dart, and Firebase.\n'
            '• Pushing to app store and play store.',
        technologies: ['Flutter', 'Firebase', 'Reservation Management'],
      ),
      ExperienceModel(
        company: 'BuyBackart',
        role: 'Senior Flutter Developer',
        period: 'March 2023 - August 2023',
        description:
            '• Developed cross-platform mobile applications using Flutter and Dart.\n'
            '• Deployed to both Apple App Store and Google Play.\n'
            '• Integrating with apis and native SDKs.',
        technologies: ['Flutter', 'Dart', 'App Store', 'Google Play'],
      ),
      ExperienceModel(
        company: 'WitFit',
        role: 'Flutter Developer',
        period: 'February 2022 – October 2023',
        description:
            '• WitFit offers a tailored course with courses, lectures, chats, exercises, etc.\n'
            '• Composed for the best possible mental training and development.\n'
            '• Professional psychologists, therapists and coaches guide you effectively.',
        technologies: ['Flutter', 'Dart', 'Education', 'Health'],
      ),
      ExperienceModel(
        company: 'Ready Worx',
        role: 'Flutter Developer',
        period: 'February 2021 - November 2021',
        description:
            '• Building Mobile Apps CrossPlatform for android and IOS.\n'
            '• Integrating with apis, printers and scanners.\n'
            '• Pushing to app store and play store.',
        technologies: ['Flutter', 'Git', 'API Integration', 'Hardware Integration'],
      ),
    ];
  }
}
