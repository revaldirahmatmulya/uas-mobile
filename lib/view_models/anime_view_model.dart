import 'package:get/get.dart';
import 'package:mvvm_project/models/anime_model.dart';

class AnimeViewModel extends GetConnect {
  Future<AnimeModelResponse> getAllData() async {
    var response = await get("https://api.consumet.org/meta/anilist/trending");
    AnimeModelResponse model = AnimeModelResponse.fromJson(response.body);

    return model;
  }
}

class AnimePopularViewModel extends GetConnect {
  Future<AnimeModelResponse> getAllData() async {
    var response = await get("https://api.consumet.org/meta/anilist/popular");
    AnimeModelResponse model = AnimeModelResponse.fromJson(response.body);

    return model;
  }
}
