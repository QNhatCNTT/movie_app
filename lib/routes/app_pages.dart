import 'package:get/get.dart';
import 'package:movie_app/modules/movie_details/movie_details_binding.dart';
import 'package:movie_app/modules/upcoming_movie/upcoming_movie_binding.dart';
import 'package:movie_app/routes/app_routes.dart';

import '../modules/movie_details/movie_details_page.dart';
import '../modules/upcoming_movie/upcoming_movie_page.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(name: AppRoutes.movieDetails, page:()=> const MovieDetailsPage(), binding:MovieDetailsBinding()),
    GetPage(name: AppRoutes.upcomingMovie, page:()=> const UpcomingMoviePage(), binding:UpcomingMovieBinding() ),
  ];
}