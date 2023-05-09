class User {
  int id;
  String name;
  String avatar;
  String? profession;
  User({
    required this.id,
    required this.name,
    required this.avatar,
    this.profession,
  });
}
