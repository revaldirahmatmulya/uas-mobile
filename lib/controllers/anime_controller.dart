import 'package:get/get.dart';
import 'package:mvvm_project/models/anime_model.dart';
import 'package:mvvm_project/view_models/anime_view_model.dart';

class AnimeController extends GetxController {
  var isLoading = true.obs;

  AnimeModelResponse? datas;
  AnimeViewModel? viewModel;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    viewModel = Get.put(AnimeViewModel());
    getAllData();
  }

  void getAllData() async {
    datas = await viewModel!.getAllData();
    isLoading.value = false;
  }
}

class AnimePopularController extends GetxController {
  var isLoading = true.obs;

  AnimeModelResponse? datas;
  AnimePopularViewModel? viewModel;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    viewModel = Get.put(AnimePopularViewModel());
    getAllData();
  }

  void getAllData() async {
    datas = await viewModel!.getAllData();
    isLoading.value = false;
  }
}
