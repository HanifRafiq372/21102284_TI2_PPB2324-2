import '../models/subject.dart';

class SubjectService {
  static List<Subject> getSubjects() {
    // Static list of subjects, normally this would be fetched from a server
    return [
      Subject(name: 'Mathematics', description: 'Learn about algebra, geometry, and more.'),
      Subject(name: 'Physics', description: 'Understand the principles of physics.'),
      Subject(name: 'Chemistry', description: 'Explore the world of chemical reactions.'),
      Subject(name: 'Biology', description: 'Study the science of life and living organisms.'),
    ];
  }
}
