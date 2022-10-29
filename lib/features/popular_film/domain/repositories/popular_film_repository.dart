import 'package:app_movies/features/popular_film/domain/entities/popular_film.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';

/// Classe que servirá de interface para os repositórios da camada de dados

abstract class PopularFilmRepository {
  Future<Either<Failure, List<PopularFilm>>> getListPopularFilm();
  Future<Either<Failure, List<PopularFilm>>> getFavoritesPopularFilm();
}
