class User {
  String name;
  String email;
  String proficiency;
  String learningGoal;
  String interest;

  User({
    required this.name,
    required this.email,
    required this.proficiency,
    required this.learningGoal,
    required this.interest,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'proficiency': proficiency,
      'learningGoal': learningGoal,
      'interest': interest,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      name: map['name'] ?? '',
      email: map['email'] ?? '',
      proficiency: map['proficiency'] ?? '',
      learningGoal: map['learningGoal'] ?? '',
      interest: map['interest'] ?? '',
    );
  }
}
