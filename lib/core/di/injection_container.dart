import 'package:get_it/get_it.dart';
import '../../features/home/data/datasources/home_local_datasource.dart';
import '../../features/home/data/repositories/home_repository_impl.dart';
import '../../features/home/domain/repositories/home_repository.dart';
import '../../features/home/domain/usecases/get_hero_data.dart';
import '../../features/home/presentation/viewmodels/home_viewmodel.dart';
import '../../features/projects/data/datasources/projects_local_datasource.dart';
import '../../features/projects/data/repositories/projects_repository_impl.dart';
import '../../features/projects/domain/repositories/projects_repository.dart';
import '../../features/projects/domain/usecases/get_projects.dart';
import '../../features/projects/presentation/viewmodels/projects_viewmodel.dart';
import '../../features/skills/data/datasources/skills_local_datasource.dart';
import '../../features/skills/data/repositories/skills_repository_impl.dart';
import '../../features/skills/domain/repositories/skills_repository.dart';
import '../../features/skills/domain/usecases/get_skills.dart';
import '../../features/skills/presentation/viewmodels/skills_viewmodel.dart';
import '../../features/certificates/data/datasources/certificates_local_datasource.dart';
import '../../features/certificates/data/repositories/certificates_repository_impl.dart';
import '../../features/certificates/domain/repositories/certificates_repository.dart';
import '../../features/certificates/domain/usecases/get_certificates.dart';
import '../../features/certificates/presentation/viewmodels/certificates_viewmodel.dart';
import '../../features/experience/data/datasources/experience_local_datasource.dart';
import '../../features/experience/data/repositories/experience_repository_impl.dart';
import '../../features/experience/domain/repositories/experience_repository.dart';
import '../../features/experience/domain/usecases/get_experience.dart';
import '../../features/experience/presentation/viewmodels/experience_viewmodel.dart';
import 'package:http/http.dart' as http;

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  // Home Feature
  sl.registerLazySingleton<HomeLocalDataSource>(
    () => HomeLocalDataSourceImpl(),
  );
  sl.registerLazySingleton<HomeRepository>(() => HomeRepositoryImpl(sl()));
  sl.registerLazySingleton(() => GetHeroData(sl()));
  sl.registerFactory(() => HomeViewModel(sl()));

  // Projects Feature
  sl.registerLazySingleton<ProjectsLocalDataSource>(
    () => ProjectsLocalDataSourceImpl(),
  );
  sl.registerLazySingleton<ProjectsRepository>(
    () => ProjectsRepositoryImpl(sl()),
  );
  sl.registerLazySingleton(() => GetProjects(sl()));
  sl.registerFactory(() => ProjectsViewModel(sl()));

  // Skills Feature
  sl.registerLazySingleton<SkillsLocalDataSource>(
    () => SkillsLocalDataSourceImpl(),
  );
  sl.registerLazySingleton<SkillsRepository>(() => SkillsRepositoryImpl(sl()));
  sl.registerLazySingleton(() => GetSkills(sl()));
  sl.registerFactory(() => SkillsViewModel(sl()));

  // Certificates Feature
  sl.registerLazySingleton<CertificatesLocalDataSource>(
    () => CertificatesLocalDataSourceImpl(),
  );
  sl.registerLazySingleton<CertificatesRepository>(
    () => CertificatesRepositoryImpl(localDataSource: sl()),
  );
  sl.registerLazySingleton(() => GetCertificates(sl()));
  sl.registerFactory(() => CertificatesViewModel(sl()));

  // Experience Feature
  sl.registerLazySingleton<ExperienceLocalDataSource>(
    () => ExperienceLocalDataSourceImpl(),
  );
  sl.registerLazySingleton<ExperienceRepository>(
    () => ExperienceRepositoryImpl(localDataSource: sl()),
  );
  sl.registerLazySingleton(() => GetExperience(sl()));
  sl.registerFactory(() => ExperienceViewModel(sl()));

  // Core
  sl.registerLazySingleton(() => http.Client());
}
