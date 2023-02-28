import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:movie_app/utils/constants.dart';

class MovieApi {
  final dio = Dio(BaseOptions(baseUrl: apiBaseUrl));

  Future<dynamic> getUpComingMovies() async {
    final response = await dio.get('/movie/upcoming?api_key=$apiKey&page=1');
    if(response.statusCode == 200){
      return response.data;
    }else {
      if (kDebugMode) {
        print(response.statusMessage);
      }
      return null;
    }
  }

  Future<dynamic> getMovieDetail({required int movieId}) async {
    final response = await dio.get('/movie/$movieId?api_key=$apiKey&append_to_response=videos');
    if(response.statusCode == 200){
      return response.data;
    }else{
      if (kDebugMode) {
        print(response.statusMessage);
      }
      return null;
    }
  } 
}