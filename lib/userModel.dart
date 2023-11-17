// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserModel {
  String name;
  String image;
  String? title;
  String? subTitle;
  String? dateTime;
  UserModel({
    required this.name,
    required this.image,
    this.title,
    this.subTitle,
    this.dateTime,
  });
}
