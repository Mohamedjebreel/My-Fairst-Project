class SocialUserModel {
 late String name;
 late String email;
 late String uId;
 late String image;
 late bool isEmailVerified;

  SocialUserModel({
   required this.email,
   required this.name,
   required  this.uId,
   required this.image,
   required this.isEmailVerified,
  });

  SocialUserModel.fromJson(Map<String, dynamic> json)
  {
    email = json['email'];
    name = json['name'];
    uId = json['uId'];
    image = json['image'];
    isEmailVerified = json['isEmailVerified'];
  }

  Map<String, dynamic> toMap()
  {
    return {
      'name':name,
      'email':email,
      'uId':uId,
      'image':image,
      'isEmailVerified':isEmailVerified,
    };
  }
}