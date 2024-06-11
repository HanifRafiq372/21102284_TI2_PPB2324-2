import 'package:flutter/material.dart';
import 'subject_detail_screen.dart';
import '../models/subject.dart';
import '../services/subject_service.dart';

class SubjectsScreen extends StatelessWidget {
  final List<Subject> subjects = SubjectService.getSubjects();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Subjects'),
      ),
      body: ListView.builder(
        itemCount: subjects.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(subjects[index].name),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SubjectDetailScreen(subject: subjects[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
