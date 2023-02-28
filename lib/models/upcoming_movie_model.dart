class UpcomingMovieModel {
  int id;
  String originalTitle;
  String backdropPath;
  UpcomingMovieModel({
    required this.id,
    required this.originalTitle,
    required this.backdropPath,
  });

  factory UpcomingMovieModel.fromMap(Map<String, dynamic> map) {
    return UpcomingMovieModel(
      id: map['id'],
      originalTitle: map['original_title'],
      backdropPath: map['backdrop_path'],
    );
  }

}
