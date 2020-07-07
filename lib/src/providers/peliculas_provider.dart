import 'package:peliculas/src/models/pelicula_model.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;


class PeliculasProvider{

  String _apiKey    = '3ceba6e90ad2d4a9ac8a5b127744a507';
  String _url       = 'api.themoviedb.org';
  String _lenguage  = 'es-ES';

  Future <List<Pelicula>> getEnCines() async{
    final url = Uri.https(_url, '3/movie/now_playing',{
      'api_key': _apiKey,
      'lenguage': _lenguage
    });

    final res = await http.get(url);
    final decodedData = json.decode(res.body);
    final peliculas = new Peliculas.fromJsonList(decodedData['results']);
    
    return peliculas.items;
    
  }




}