import 'package:final_day/models/meal.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:final_day/data/global_data.dart';

class Api {
  String link = "https://api.spoonacular.com/recipes/complexSearch?query=pasta&maxFat=25&number=20&apiKey=2ab94e9dfc49485ea4a26e39282bf78a";
  getData() async {
    var uri = Uri.parse(link);
    var response = await http.get(uri);

    var responseJson = json.decode(response.body);

    for (var meal in responseJson["results"]) {
      allMeals.add(Meal.fromJson(meal));
    }
  }
}
