import 'package:app_movies/features/popular_film/domain/entities/popular_film.dart';

class PopularFilmModel extends PopularFilm {
  const PopularFilmModel({
    required super.adult,
    required super.backdropPath,
    required super.genreIds,
    required super.id,
    required super.originalLanguage,
    required super.originalTitle,
    required super.overview,
    required super.popularity,
    required super.posterPath,
    required super.releaseDate,
    required super.title,
    required super.video,
    required super.voteAverage,
    required super.voteCount,
  });

  factory PopularFilmModel.fromJson(Map<String, dynamic> json) {
    return PopularFilmModel(
      adult: json['adult'],
      backdropPath: json['backdropPath'],
      genreIds:
          (json['genreIds'] as List).map((e) => (e as num).toInt()).toList(),
      id: (json['id'] as num).toInt(),
      originalLanguage: json['originalLanguage'],
      originalTitle: json['originalTitle'],
      overview: json['overview'],
      popularity: (json['popularity'] as num).toDouble(),
      posterPath: json['posterPath'],
      releaseDate: json['releaseDate'],
      title: json['title'],
      video: json['video'],
      voteAverage: (json['voteAverage'] as num).toDouble(),
      voteCount: (json['voteCount'] as num).toInt(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "adult": adult,
      "backdropPath": backdropPath,
      "genreIds": genreIds?.toList(),
      "id": id,
      "originalLanguage": originalLanguage,
      "originalTitle": originalTitle,
      "overview": overview,
      "popularity": popularity,
      "posterPath": posterPath,
      "releaseDate": releaseDate,
      "title": title,
      "video": video,
      "voteAverage": voteAverage,
      "voteCount": voteCount,
    };
  }
}
