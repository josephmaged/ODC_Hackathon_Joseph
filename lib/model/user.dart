class Users {
  String? userEmail;
  String? password;

  Users({this.userEmail,this.password});

  Map<String, dynamic> toJson()=> {
    'email' : userEmail,
    'password' : password
  };
}