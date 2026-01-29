import 'package:flutter/material.dart';
import '../models/project_model.dart';

abstract class ProjectsLocalDataSource {
  Future<List<ProjectModel>> getProjects();
}

class ProjectsLocalDataSourceImpl implements ProjectsLocalDataSource {
  @override
  Future<List<ProjectModel>> getProjects() async {
    await Future.delayed(const Duration(milliseconds: 100));

    return const [
      ProjectModel(
        title: 'project_data.ovansales.title',
        description: 'project_data.ovansales.description',
        technologies: ['Flutter', 'O-Blue', 'Bluetooth', 'ERP'],
        color: Colors.blue,
      ),
      ProjectModel(
        title: 'project_data.fooj.title',
        description: 'project_data.fooj.description',
        technologies: ['Flutter', 'Stable Management', 'UI/UX'],
        color: Colors.brown,
      ),
      ProjectModel(
        title: 'project_data.cbevents.title',
        description: 'project_data.cbevents.description',
        technologies: ['Flutter', 'QR Code', 'MVVM', 'Hive'],
        color: Colors.purple,
      ),
      ProjectModel(
        title: 'project_data.cblink.title',
        description: 'project_data.cblink.description',
        technologies: ['Flutter', 'Rest API', 'Notifications', 'Bloc'],
        color: Colors.indigo,
      ),
      ProjectModel(
        title: 'project_data.cbegypt.title',
        description: 'project_data.cbegypt.description',
        technologies: ['Flutter', 'Google Maps', 'Geocoding', 'Real Estate'],
        color: Colors.blueGrey,
      ),
      ProjectModel(
        title: 'project_data.aircairo.title',
        description: 'project_data.aircairo.description',
        technologies: ['Flutter', 'Deep Links', 'Firebase', 'Booking'],
        color: Colors.blueAccent,
      ),
      ProjectModel(
        title: 'project_data.beyti.title',
        description: 'project_data.beyti.description',
        technologies: ['Flutter', 'QR Scanner', 'E-commerce', 'Firebase'],
        color: Colors.green,
      ),
      ProjectModel(
        title: 'project_data.hawahadent.title',
        description: 'project_data.hawahadent.description',
        technologies: ['Flutter', 'Audio Player', 'Healthcare', 'Appointments'],
        color: Colors.pink,
      ),
      ProjectModel(
        title: 'project_data.khamato.title',
        description: 'project_data.khamato.description',
        technologies: ['Flutter', 'Marketplace', 'Payment Gateway', 'Cubit'],
        color: Colors.amber,
      ),
      ProjectModel(
        title: 'project_data.ceem.title',
        description: 'project_data.ceem.description',
        technologies: ['Flutter', 'Coupons', 'Geocoding', 'Native Calendar'],
        color: Colors.teal,
      ),
      ProjectModel(
        title: 'project_data.quickseat.title',
        description: 'project_data.quickseat.description',
        technologies: ['Flutter', 'Real-time', 'Reservation', 'Background Service'],
        color: Colors.orange,
      ),
      ProjectModel(
        title: 'project_data.buybackart.title',
        description: 'project_data.buybackart.description',
        technologies: ['Flutter', 'E-commerce', 'Estimation', 'Deployment'],
        color: Colors.cyan,
      ),
      ProjectModel(
        title: 'project_data.growpharma.title',
        description: 'project_data.growpharma.description',
        technologies: ['Flutter', 'Medical', 'Supplements'],
        color: Colors.lightGreen,
      ),
      ProjectModel(
        title: 'project_data.facility.title',
        description: 'project_data.facility.description',
        technologies: ['Flutter', 'Facility Management', 'Services'],
        color: Colors.deepPurple,
      ),
      ProjectModel(
        title: 'project_data.pos.title',
        description: 'project_data.pos.description',
        technologies: ['Flutter', 'POS', 'Payments'],
        color: Colors.redAccent,
      ),
      ProjectModel(
        title: 'project_data.besty.title',
        description: 'project_data.besty.description',
        technologies: ['PHP', 'Laravel', 'MySQL', 'Stripe'],
        color: Colors.deepOrange,
      ),
    ];
  }
}
