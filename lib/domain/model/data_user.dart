class DataUser {
  final String? name;
  final String? phone;
  final String? department;
  final String? email;
  final String? password;
  final String? role;

  DataUser({
    this.name,
    this.phone,
    this.department,
    this.email,
    this.password,
    this.role,
  });

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {
      'name': name,
      'phone': phone,
      'department': department,
      'email': email,
      'password': password,
      'role': role,
    };

    return map;
  }
}
