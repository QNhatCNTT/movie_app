import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:movie_app/apis/movie_api.dart';
import 'package:movie_app/models/upcoming_movie_model.dart';

class UpcomingMovieController extends GetxController {

  MovieApi movieApi = MovieApi();
  List<UpcomingMovieModel> upcomingMovies = <UpcomingMovieModel>[].obs;
  // bool isLoading = true;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fecthUpcomingMoives();
  }

  void fecthUpcomingMoives() async {
    final response = await movieApi.getUpComingMovies();
    if(response != null){
      
      response['results'].forEach((data)=>{
        upcomingMovies.add(UpcomingMovieModel.fromMap(data))
      });
      // final data = <UpcomingMovieModel>[];
      // for (var item in response['results']) {
      //   data.add(UpcomingMovieModel.fromMap(item));
      // }
      // upcomingMovies = data;
      // isLoading = false;
      // update();
      if (kDebugMode) {
        print(upcomingMovies);
      }
    }
  }
}