class User {
  final int? id;
  final String? name;
  final String? department;
  final int? phoneNumber;
  final String? email;

  User({this.id, this.name, this.department, this.phoneNumber, this.email});

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {
      'id': id,
      'name': name,
      'department': department,
      'phone_number': phoneNumber,
      'email': email,
    };
    return map;
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'],
      name: map['name'],
      department: map['department'],
      phoneNumber: map['phone_number'],
      email: map['email'],
    );
  }
}
