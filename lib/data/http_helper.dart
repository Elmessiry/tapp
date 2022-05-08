import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:tapp/data/weather.dart';

class HttpHelper {
  final String authority = 'api.openweathermap.org';
  final String path = 'data/2.5/weather';
  final String apiKey = dotenv.get('API_KEY');

  Future<Weather> getWeather(String location) async {
    Map<String, dynamic> parameters = {'q': location, 'appId': apiKey};
    Uri uri = Uri.https(authority, path, parameters);
    http.Response result = await http.get(uri);
    Map<String, dynamic> data = json.decode(result.body);
    Weather weather = Weather.fromJson(data);

    return weather;
  }
}
