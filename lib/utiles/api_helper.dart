import 'dart:convert';

import 'package:extra2/screens/model/image_model.dart';
import 'package:http/http.dart' as http;

class Apihelper {
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

//import 'dart:convert';
//
// import 'package:bhgvatgita/screens/model/Bhagvatgita_modal.dart';
// import 'package:http/http.dart' as http;
//
// class ApiHelper {
//   Future<List<BhagvadGita>> apidata() async {
//     String link =
//         "https://bhagavad-gita3.p.rapidapi.com/v2/chapters/";
//     var response = await http.get(
//       Uri.parse(link),
//       headers: {
//         'X-RapidAPI-Key': '8fc7258c1emshaacb44946e94e6bp17dab4jsn6e16a2fa46dd',
//         'X-RapidAPI-Host': 'bhagavad-gita3.p.rapidapi.com'
//       },
//     );
//     var json = jsonDecode(response.body);
//     // print(json);
//     List<BhagvadGita> list =
//     List<BhagvadGita>.from(json.map((json) => BhagvadGita.fromJson(json)));
//     // print(list);
//
//     return list;
//   }
// }
