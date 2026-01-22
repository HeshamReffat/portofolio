import '../entities/hero_data.dart';

abstract class HomeRepository {
  Future<HeroData> getHeroData();
}
