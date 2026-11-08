import 'package:flutter/foundation.dart';

import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import '../models/models.dart';

class MoviesProvider extends ChangeNotifier{
  String _baseUrl = "api.themoviedb.org";
  String _apiKey = "58e1b40107f330c1ff749cb78842b8d0";
  String _language = "es-ES";
  String _page = "1";

  List<Movie> onDisplayMovies = [];
  List<Movie> onPopular = [];

  Map<int, List<Cast>> casting = {};

  MoviesProvider () {
    print("Movies provider inicialitzat");
    this.getOnDisplayMovies();
  }

  getOnDisplayMovies() async{
    print("getOnDisplayMovies");
    var url = Uri.https(_baseUrl, '3/movie/now_playing', {
      "api_key": _apiKey,
      "language": _language,
      "page" : _page
    });

    final result = await http.get(url);

    final nowPlayingRespone = NowPlayingRespone.fromJson(result.body);
    onDisplayMovies = nowPlayingRespone.results;
    notifyListeners();
    
  }

  getOnPopular() async {
    var url = Uri.https(_baseUrl, '3/movie/popular', {
      "api_key": _apiKey,
      "language": _language,
      "page" : _page
    });

    final result = await http.get(url);

    final popularResponse = PopularResponse.fromJson(result.body);
    onPopular = popularResponse.results;
    notifyListeners();
  }

  Future<List<Cast>> getMovieCast(int idMovie) async {
    print("Demanam info al servidor!");

    var url = Uri.https(_baseUrl, '3/movie/$idMovie/credits', {
      "api_key": _apiKey,
      "language": _language,
      "page" : _page
    });

    final result = await http.get(url);

    final creditsResponse = CreditsResponse.fromJson(result.body);

    casting[idMovie] = creditsResponse.cast;

    return creditsResponse.cast;
  }

}