import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../models/skill_model.dart';

abstract class SkillsLocalDataSource {
  Future<List<SkillModel>> getSkills();
}

class SkillsLocalDataSourceImpl implements SkillsLocalDataSource {
  @override
  Future<List<SkillModel>> getSkills() async {
    await Future.delayed(const Duration(milliseconds: 100));

    return const [
      SkillModel(name: 'skills_data.flutter', level: 0.95, icon: FontAwesomeIcons.mobile),
      SkillModel(name: 'skills_data.dart', level: 0.95, icon: FontAwesomeIcons.code),
      SkillModel(
        name: 'skills_data.android',
        level: 0.85,
        icon: FontAwesomeIcons.android,
      ),
      SkillModel(
        name: 'skills_data.clean_arch',
        level: 0.9,
        icon: FontAwesomeIcons.layerGroup,
      ),
      SkillModel(name: 'skills_data.state_mgmt', level: 0.9, icon: FontAwesomeIcons.cubes),
      SkillModel(name: 'skills_data.laravel', level: 0.8, icon: FontAwesomeIcons.php),
      SkillModel(name: 'skills_data.git', level: 0.9, icon: FontAwesomeIcons.github),
      SkillModel(name: 'skills_data.firebase', level: 0.85, icon: FontAwesomeIcons.fire),
      SkillModel(name: 'skills_data.rest_api', level: 0.9, icon: FontAwesomeIcons.server),
      SkillModel(
        name: 'skills_data.google_maps',
        level: 0.85,
        icon: FontAwesomeIcons.mapLocationDot,
      ),
      SkillModel(
        name: 'skills_data.payment',
        level: 0.8,
        icon: FontAwesomeIcons.creditCard,
      ),
      SkillModel(
        name: 'skills_data.local_db',
        level: 0.85,
        icon: FontAwesomeIcons.database,
      ),
      SkillModel(
        name: 'skills_data.ui_ux',
        level: 0.9,
        icon: FontAwesomeIcons.paintbrush,
      ),
      SkillModel(
        name: 'skills_data.testing',
        level: 0.8,
        icon: FontAwesomeIcons.checkDouble,
      ),
      SkillModel(
        name: 'skills_data.problem_solving',
        level: 0.9,
        icon: FontAwesomeIcons.lightbulb,
      ),
      SkillModel(
        name: 'skills_data.time_mgmt',
        level: 0.85,
        icon: FontAwesomeIcons.clock,
      ),
    ];
  }
}
