class User {
  final String name;
  final String email;
  final String phone;
  final String password;


  User({required this.name, required this.email,required this.phone,required this.password});
  //constructor that convert json to object instance
  User.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        email = json['email'],
        phone = json['phone'],
        password=json['password'];
  //a method that convert object to json
  Map<String, dynamic> toJson() => {
    'name': name,
    'email': email,
    'phone':phone,
    'password':password,
  };
}