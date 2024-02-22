class User {
  String mail;
  String password;
  bool keepOn;

  User({required this.mail, required this.password, this.keepOn = false});

  User.fromJson(Map<String, dynamic> json)
      : mail = json['mail'] ?? "",
        password = json['password'] ?? "",
        keepOn = json['keep0n'] ?? false;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['mail'] = this.mail;
    data['password'] = this.password;
    data['keep0n'] = this.keepOn;
    return data;
  }
}
