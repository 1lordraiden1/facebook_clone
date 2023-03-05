class PostModel{
  String? userN;
  String? userI;
  String? date;
  String? text;
  String? img;
  bool isLike;

  PostModel({
    required this.userN,
    required this.userI,
    required this.date,
    required this.text,
    required this.img,
    this.isLike = false,
});


}