import '../../domain/entities/hero_data.dart';
import '../../domain/repositories/home_repository.dart';
import '../datasources/home_local_datasource.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeLocalDataSource localDataSource;

  HomeRepositoryImpl(this.localDataSource);

  @override
  Future<HeroData> getHeroData() async {
    return await localDataSource.getHeroData();
  }
}
