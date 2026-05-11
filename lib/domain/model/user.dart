class User {
  final int? id;
  final String name;
  final int phoneNumber;
  final String email;
  final String password;

  User({
    this.id,
    this.name = '',
    this.phoneNumber = 0,
    this.email = '',
    this.password = '',
  });

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {
      'id': id,
      'name': name,
      'phone_number': phoneNumber,
      'email': email,
      'password': password,
    };
    return map;
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'],
      name: map['name'],
      phoneNumber: map['phone_number'],
      email: map['email'],
      password: map['password'],
    );
  }
}
