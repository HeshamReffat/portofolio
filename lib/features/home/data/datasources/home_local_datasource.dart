import '../models/hero_data_model.dart';

abstract class HomeLocalDataSource {
  Future<HeroDataModel> getHeroData();
}

class HomeLocalDataSourceImpl implements HomeLocalDataSource {
  @override
  Future<HeroDataModel> getHeroData() async {
    // Simulate fetching data from local storage or cache
    await Future.delayed(const Duration(milliseconds: 100));
    
    return const HeroDataModel(
      name: 'yourName',
      roles: [
        'roles.senior_flutter',
        'roles.android',
        'roles.laravel',
      ],
      ctaText: 'cta.viewWork',
    );
  }
}
