import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:movie_app/apis/movie_api.dart';
import 'package:movie_app/models/movie_details_movie.dart';

class MovieDetailsController extends GetxController {

  int movieId = Get.arguments[0];
  MovieApi movieApi = MovieApi();

  // bool isLoading = true;
  List<MovieDetailsModel> movieData = <MovieDetailsModel>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    if (kDebugMode) {
      print('argument - ${Get.arguments}');
    }
    fetchMovieDetails();
  }

  void fetchMovieDetails() async {
    final response = await movieApi.getMovieDetail(movieId: movieId);
    if(response != null) {
      movieData.add(MovieDetailsModel.fromMap(response));
      // isLoading = false;
      // update();
    }
  }
}