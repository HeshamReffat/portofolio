import '../../domain/entities/experience.dart';
import '../../domain/repositories/experience_repository.dart';
import '../datasources/experience_local_datasource.dart';

class ExperienceRepositoryImpl implements ExperienceRepository {
  final ExperienceLocalDataSource localDataSource;

  ExperienceRepositoryImpl({required this.localDataSource});

  @override
  Future<List<Experience>> getExperience() async {
    return await localDataSource.getExperience();
  }
}
