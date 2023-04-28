class MentorModel {
  String id;
  final String fullName;
  final String specialization;
  final String levelAcademic;
  final String whatsappLink;
  final String twitterLink;

  MentorModel({
    this.id = '',
    required this.fullName,
    required this.specialization,
    required this.levelAcademic,
    required this.whatsappLink,
    required this.twitterLink,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'full name': fullName,
        'specialization': specialization,
        'level academic': levelAcademic,
        'whatsapp link': whatsappLink,
        'twitter link': twitterLink,
      };

  static MentorModel fromJson(Map<String, dynamic> json) => MentorModel(
        id: json['id'] ?? '',
        fullName: json['full name'] ?? '',
        specialization: json['specialization'] ?? '',
        levelAcademic: json['level academic'] ?? '',
        whatsappLink: json['whatsapp link'] ?? '',
        twitterLink: json['twitter link'] ?? '',
      );
}
