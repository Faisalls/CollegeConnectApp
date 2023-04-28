class StudentsModel {
  String id;
  final String userName;
  final String firstName;
  final String lastName;
  final String academicChoice;

  StudentsModel({
    this.id = '',
    required this.userName,
    required this.firstName,
    required this.lastName,
    required this.academicChoice,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'user name': userName,
        'first name': firstName,
        'last name': lastName,
        'academic choice': academicChoice,
      };

  static StudentsModel fromJson(Map<String, dynamic> json) => StudentsModel(
        id: json['id'] ?? '',
        userName: json['user name'] ?? '',
        firstName: json['first name'] ?? '',
        lastName: json['last name'] ?? '',
        academicChoice: json['academic choice'] ?? '',
      );
}
