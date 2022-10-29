import 'package:app_movies/features/popular_film/data/models/popular_film_model.dart';

abstract class PopularFilmRemoteDataSource {
  Future<PopularFilmModel> getListPopularFilm();
}
