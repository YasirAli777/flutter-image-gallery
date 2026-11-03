import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:image_gallery/models/image_model.dart';

class ApiService {
  Future<List<ImageModel>> fetchImages() async {
    final url = Uri.parse(
      'https://picsum.photos/v2/list',

    );
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data.map((json){
        return ImageModel.fromjson(json);
      }).toList();
    } else {
      throw Exception("Failed to load images");
    }
  }
}
