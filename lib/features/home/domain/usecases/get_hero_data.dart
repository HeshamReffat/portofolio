import '../entities/hero_data.dart';
import '../repositories/home_repository.dart';

class GetHeroData {
  final HomeRepository repository;

  GetHeroData(this.repository);

  Future<HeroData> call() async {
    return await repository.getHeroData();
  }
}
