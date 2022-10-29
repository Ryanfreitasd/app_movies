import 'package:app_movies/core/platform/network_info.dart';
import 'package:app_movies/features/popular_film/data/datasources/popular_film_local_data_source.dart';
import 'package:app_movies/features/popular_film/data/datasources/popular_film_remote_data_source.dart';
import 'package:app_movies/features/popular_film/data/repositories/popular_film_repository_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockRemoteDataSource extends Mock implements PopularFilmRemoteDataSource {
}

class MockLocalDataSource extends Mock implements PopularFilmLocalDataSource {}

class MockNetworkInfo extends Mock implements NetworkInfo {}

void main() {
  PopularFilmRepositoryImpl repository;
  MockRemoteDataSource mockRemoteDataSource;
  MockLocalDataSource mockLocalDataSource;
  MockNetworkInfo mockNetworkInfo;

  setUp(() {
    mockRemoteDataSource = MockRemoteDataSource();
    mockLocalDataSource = MockLocalDataSource();
    mockNetworkInfo = MockNetworkInfo();
    repository = PopularFilmRepositoryImpl(
      networkInfo: mockNetworkInfo,
      localDataSource: mockLocalDataSource,
      remoteDataSource: mockRemoteDataSource,
    );
  });
}
