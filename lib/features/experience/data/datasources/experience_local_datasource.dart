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
        role: 'experience.microtec.role',
        period: 'experience.microtec.period',
        description: 'experience.microtec.description',
        technologies: ['Flutter', 'Dart', 'ERP', 'Rest API', 'Native SDKs'],
      ),
      ExperienceModel(
        company: 'E-Motion',
        role: 'experience.emotion.role',
        period: 'experience.emotion.period',
        description: 'experience.emotion.description',
        technologies: ['Flutter', 'Dart', 'E-Commerce', 'SDK Integration'],
      ),
      ExperienceModel(
        company: 'IMS Corp',
        role: 'experience.ims.role',
        period: 'experience.ims.period',
        description: 'experience.ims.description',
        technologies: ['Flutter', 'Firebase', 'UI/UX', 'Mobile App'],
      ),
      ExperienceModel(
        company: 'QuickSeat SA',
        role: 'experience.quickseat.role',
        period: 'experience.quickseat.period',
        description: 'experience.quickseat.description',
        technologies: ['Flutter', 'Firebase', 'Reservation Management'],
      ),
      ExperienceModel(
        company: 'BuyBackart',
        role: 'experience.buybackart.role',
        period: 'experience.buybackart.period',
        description: 'experience.buybackart.description',
        technologies: ['Flutter', 'Dart', 'App Store', 'Google Play'],
      ),
      ExperienceModel(
        company: 'WitFit',
        role: 'experience.witfit.role',
        period: 'experience.witfit.period',
        description: 'experience.witfit.description',
        technologies: ['Flutter', 'Dart', 'Education', 'Health'],
      ),
      ExperienceModel(
        company: 'Ready Worx',
        role: 'experience.readyworx.role',
        period: 'experience.readyworx.period',
        description: 'experience.readyworx.description',
        technologies: ['Flutter', 'Git', 'API Integration', 'Hardware Integration'],
      ),
    ];
  }
}
