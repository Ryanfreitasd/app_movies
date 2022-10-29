import 'package:app_movies/core/platform/network_info.dart';
import 'package:app_movies/features/popular_film/data/datasources/popular_film_local_data_source.dart';
import 'package:app_movies/features/popular_film/data/datasources/popular_film_remote_data_source.dart';
import 'package:app_movies/features/popular_film/domain/entities/popular_film.dart';
import 'package:app_movies/core/error/failure.dart';
import 'package:app_movies/features/popular_film/domain/repositories/popular_film_repository.dart';
import 'package:dartz/dartz.dart';

class PopularFilmRepositoryImpl implements PopularFilmRepository {
  final NetworkInfo networkInfo;
  final PopularFilmRemoteDataSource remoteDataSource;
  final PopularFilmLocalDataSource localDataSource;

  PopularFilmRepositoryImpl({
    required this.networkInfo,
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<Either<Failure, List<PopularFilm>>> getFavoritesPopularFilm() {
    // TODO: implement getFavoritesPopularFilm
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<PopularFilm>>> getListPopularFilm() {
    // TODO: implement getListPopularFilm
    throw UnimplementedError();
  }
}
