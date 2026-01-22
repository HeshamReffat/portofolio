import '../../domain/entities/project.dart';
import '../../domain/repositories/projects_repository.dart';
import '../datasources/projects_local_datasource.dart';

class ProjectsRepositoryImpl implements ProjectsRepository {
  final ProjectsLocalDataSource localDataSource;

  ProjectsRepositoryImpl(this.localDataSource);

  @override
  Future<List<Project>> getProjects() async {
    return await localDataSource.getProjects();
  }
}
