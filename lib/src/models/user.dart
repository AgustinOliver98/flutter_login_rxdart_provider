class User {
  String username;
  String password;

  User({this.username, this.password});

  @override
  String toString() => 'Credential{email: $username, password: $password}';
}
