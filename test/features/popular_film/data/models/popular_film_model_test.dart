import 'dart:convert';

import 'package:app_movies/features/popular_film/data/models/popular_film_model.dart';
import 'package:app_movies/features/popular_film/domain/entities/popular_film.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  const tPopularFilmModel = PopularFilmModel(
    adult: false,
    backdropPath: "/path",
    genreIds: [1, 2],
    id: 1,
    originalLanguage: "pt-br",
    originalTitle: "Title Original Test",
    overview: "overview",
    popularity: 123.123,
    posterPath: "/poster-path",
    releaseDate: "2022-10-22",
    title: "Title Test",
    video: false,
    voteAverage: 1.0,
    voteCount: 1,
  );

  test(
    "Deve retornar uma subclasse da entidade PopularFilm",
    () async {
      //assert
      expect(tPopularFilmModel, isA<PopularFilm>());
    },
  );

  group("fromJson", () {
    test(
      "deve retornar uma model valida a partir do json",
      () async {
        //arrange
        final Map<String, dynamic> jsonMap =
            json.decode(fixture('popular_film.json'));
        //act
        final result = PopularFilmModel.fromJson(jsonMap);
        //assert
        expect(result, tPopularFilmModel);
      },
    );
  });

  group("toJson", () {
    test(
      "deve retornar um map JSON a partir do dados da model",
      () async {
        //act
        final result = tPopularFilmModel.toJson();
        //assert
        final expectedMap = {
          "adult": false,
          "backdropPath": "/path",
          "genreIds": [1, 2],
          "id": 1,
          "originalLanguage": "pt-br",
          "originalTitle": "Title Original Test",
          "overview": "overview",
          "popularity": 123.123,
          "posterPath": "/poster-path",
          "releaseDate": "2022-10-22",
          "title": "Title Test",
          "video": false,
          "voteAverage": 1.0,
          "voteCount": 1
        };
        expect(result, expectedMap);
      },
    );
  });
}
