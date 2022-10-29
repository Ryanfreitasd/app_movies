import 'package:app_movies/core/usecase/usecase.dart';
import 'package:app_movies/features/popular_film/domain/entities/popular_film.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../repositories/popular_film_repository.dart';

/// Classe que retornar a chamada de lista de filmes populares

class GetListPopularFilmUsecase
    implements UseCase<List<PopularFilm>, NoParams> {
  final PopularFilmRepository repository;

  GetListPopularFilmUsecase(this.repository);

  @override
  Future<Either<Failure, List<PopularFilm>>> call(NoParams noParams) async {
    return await repository.getListPopularFilm();
  }
}
