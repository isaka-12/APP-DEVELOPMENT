class Organization {
  int id;
  String name;
  String address;
  dynamic usertype;
  List<dynamic> user;

  Organization(
      {required this.id,
      required this.name,
      required this.address,
      required this.usertype,
      required this.user});

  factory Organization.fromJson(Map<String, dynamic> json) {
    return Organization(
      id: json['id'],
      name: json['name'],
      address: json['address'],
      usertype: json['UserType'],
      user: json['user'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'address': address,
      'UserType': usertype,
      'user': user,
    };
  }

}
