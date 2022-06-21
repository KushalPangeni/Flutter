// ignore_for_file: non_constant_identifier_names

class Grade {
  int? count;

  // Map<String,dynamic> results={
  // int? id;
  // int class_name;
  // String section}

  // Grade({this.id, required this.class_name, required this.section});

  Grade.fromJson(Map<String, dynamic> json) : count = json['count'];
  // : id = json['id'],
  //   class_name = json['class_name'],
  //   section = json['section'];

  // toList() {}
  Grade({required this.count});
}
