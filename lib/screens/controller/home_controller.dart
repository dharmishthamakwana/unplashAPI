import 'package:extra2/screens/model/image_model.dart';
import 'package:extra2/utiles/api_helper.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController controller = HomeController._();

  HomeController._();

  RxInt index = 0.obs;
  RxList<ImageModel> data = <ImageModel>[].obs;
  RxList date = [].obs;

  Future<void> callApi() async {
    data.value = await Apihelper.apiHelper.apihelper();
  }
}
