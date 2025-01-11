class Meal {
  int? id;
  String? title;
  String? imageUrl;

  Meal({this.id, this.title, this.imageUrl});

  factory Meal.fromJson(Map json) {
    return Meal(
        id: json["id"], title: json["title"], imageUrl: json["image"]);
  }
}
