import 'dart:convert';

import 'package:extra2/screens/model/image_model.dart';
import 'package:http/http.dart' as http;

class Apihelper {
  static Apihelper apiHelper = Apihelper._();
  Apihelper._();
  Future<List<ImageModel>> apihelper() async {
    String link =
        "https://api.unsplash.com/collections/?client_id=Dc-R9ElrhfTL7N7K15av-qfTulcpCZ_7Y1_tQQvoFGk";
   var response = await http.get(Uri.parse(link));
    var json = jsonDecode(response.body);
    print(json);
    List<ImageModel> list =
        List<ImageModel>.from(json.map((json) => ImageModel.fromJson(json)));
    print(list);
    return list;
  }
}

