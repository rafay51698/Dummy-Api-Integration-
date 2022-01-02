class UserModel {
  int id;
  String name;
  String username;
  String? email;
  String? street;
  String? city;

  UserModel({
    required this.id,
    required this.name,
    required this.username,
    this.email,
    this.street,
    this.city,

  });
}
