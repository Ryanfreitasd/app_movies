import 'package:app_movies/core/usecase/usecase.dart';
import 'package:app_movies/features/popular_film/domain/entities/popular_film.dart';
import 'package:app_movies/features/popular_film/domain/repositories/popular_film_repository.dart';
import 'package:app_movies/features/popular_film/domain/usecases/get_list_popular_film_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockPopularFilmRepository extends Mock implements PopularFilmRepository {}

void main() {
  late MockPopularFilmRepository mockPopularFilmRepository;
  late GetListPopularFilmUsecase usecase;

  setUp(() {
    mockPopularFilmRepository = MockPopularFilmRepository();
    usecase = GetListPopularFilmUsecase(mockPopularFilmRepository);
  });

  final List<PopularFilm> tListPopularFilm = List.generate(
    3,
    (index) => const PopularFilm(
      adult: false,
      backdropPath: "/5GA3vV1aWWHTSDO5eno8V5zDo8r.jpg",
      genreIds: [27, 53],
      id: 760161,
      originalLanguage: "en",
      originalTitle: "Orphan: First Kill",
      overview:
          "After escaping from an Estonian psychiatric facility, Leena Klammer travels to America by impersonating Esther, the missing daughter of a wealthy family. But when her mask starts to slip, she is put against a mother who will protect her family from the murderous “child” at any cost.",
      popularity: 4263.388,
      posterPath: "/pHkKbIRoCe7zIFvqan9LFSaQAde.jpg",
      releaseDate: "2022-07-27",
      title: "Orphan: First Kill",
      video: false,
      voteAverage: 6.9,
      voteCount: 999,
    ),
  );

  test(
    "Deve retornar uma lista de filmes populares",
    () async {
      // arrange
      when(() => mockPopularFilmRepository.getListPopularFilm())
          .thenAnswer((_) async => Right(tListPopularFilm));
      // act
      final result = await usecase(NoParams());
      // assert
      expect(result, Right(tListPopularFilm));
      verify(() => mockPopularFilmRepository.getListPopularFilm());
      verifyNoMoreInteractions(mockPopularFilmRepository);
    },
  );
}
