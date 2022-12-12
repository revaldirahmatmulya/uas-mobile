import 'package:get/get.dart';
import 'package:mvvm_project/models/anime_model.dart';

class AnimeViewModel extends GetConnect {
  Future<AnimeModelResponse> getAllData(String title) async {
    var response = await get("https://api.consumet.org/anime/animepahe/$title");
    AnimeModelResponse model = AnimeModelResponse.fromJson(response.body);

    return model;
  }
}
