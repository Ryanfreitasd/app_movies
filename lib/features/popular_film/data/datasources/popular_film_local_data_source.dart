import 'package:app_movies/features/popular_film/data/models/popular_film_model.dart';

abstract class PopularFilmLocalDataSource {
  Future<List<PopularFilmModel>> getFavoritesPopularFilm();

  Future<void> cacheFavoritesPopularFilm(PopularFilmModel popularFilmModel);

  Future<void> removeFromFavoritesPopularFilm(
      PopularFilmModel popularFilmModel);
}
