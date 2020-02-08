import 'dart:convert';

import 'package:http/http.dart' as http;
import '../model/data_model.dart';

class HttpUtils {
  static Future<List<DataModel>> getListData() async {
    final response =
    await http.get('https://raw.githubusercontent.com/LVHAI/TestData/master/flutter_data.json');
    if (response.statusCode == 200) {
      print('object............${response.body}');
      final responseBody = json.decode(response.body);
      List<DataModel> datas = responseBody.map<DataModel>((json) => DataModel.changeToModel(json)).toList();
      print('object............$datas');
      return datas;
    } else {
      throw Exception('Failed to fetch posts.');
    }
  }
}