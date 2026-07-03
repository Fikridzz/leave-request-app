class User {
  final int? id;
  final String? name;
  final String? phone;
  final String? department;
  final int? phoneNumber;
  final String? email;
  final String? role;

  User({
    this.id,
    this.name,
    this.phone,
    this.department,
    this.phoneNumber,
    this.email,
    this.role,
  });

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {
      'id': id,
      'name': name,
      'phone': phone,
      'department': department,
      'phone_number': phoneNumber,
      'email': email,
      'role': role,
    };
    return map;
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'],
      name: map['name'],
      phone: map['phone'],
      department: map['department'],
      phoneNumber: map['phone_number'],
      email: map['email'],
      role: map['role'],
    );
  }
}
