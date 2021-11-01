class UserModel {

  late String firstName;
  late String email;
  String? userName="";
  String? language="";
  String? type="";
  String? bio="";
  String? phone="";
  String? gender="";
  String? website="";


  UserModel({
    required this.firstName,
    required this.email,
    this.userName,
    this.language,
    this.type,
    this.bio,
    this.website,
    this.gender,
    this.phone,
  });




  UserModel.fromJson(Map<String, dynamic> data){
    firstName = data["Name"]??"Default";
    email = data["email"];
    language = data["language"]??"";
    userName = data["userName"]??"";
    bio = data["bio"]??"";
    phone = data["phone"] ?? "";
    gender = data["gender"]??"";
    website = data["website"]??"";

  }

  Map<String, dynamic> toJson() {
    return {
      "Name": firstName,
      "userName": userName,
      "email": email,
      "language": language,
      "type" : type,
      "bio": bio,
      "phone": phone,
      "gender": gender,
      "website": website,


    };
  }
}