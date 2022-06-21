class Profile_model{

  String username = "" ;
  String email = "" ;
  String number = "" ;
  String password = "" ;
  String name = "";

  Profile_model({ required this.username,required this.email,required this.number,required this.password,required this.name});

  Profile_model.fromJson(Map<dynamic, dynamic> json):
        username = json['username'] as String,
        email = json['email'] as String,
        number = json['phone'] as String,
        password = json['password'] as String,
        name = json['name'] as String;


  Map<dynamic, dynamic> toJson() =>
      <dynamic, dynamic>{
        'username' : username.toString(),
        'email' : email.toString(),
        'phone' : number.toString(),
        'password' : password.toString(),
        'name' : name.toString()
      };

}