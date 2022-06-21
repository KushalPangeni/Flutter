class Teacher {
  final int? id;
  final String firstName;
  final String lastName;
  final String address;

  Teacher(
      {this.id,
      required this.firstName,
      required this.lastName,
      required this.address});

  factory Teacher.fromJson(Map<String, dynamic> json) {
    return Teacher(
      id: json['id'],
      firstName: json['firstName'],
      lastName: json['lastName'],
      address: json['address'],
    );
  }
}
