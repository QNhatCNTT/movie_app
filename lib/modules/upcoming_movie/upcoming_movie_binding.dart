import 'package:get/get.dart';
import 'package:movie_app/modules/upcoming_movie/upcoming_movie_controller.dart';

class UpcomingMovieBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<UpcomingMovieController>(() => UpcomingMovieController());
  }
}

