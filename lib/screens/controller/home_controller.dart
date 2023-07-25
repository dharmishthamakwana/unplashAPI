
import 'package:extra2/utiles/api_helper.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  Apihelper apiHelper =Apihelper();

  List<dynamic> apilist=[];


  Future<List> Getdata() async {
    apilist = await apiHelper.apihelper();
    return apilist;
  }
}





