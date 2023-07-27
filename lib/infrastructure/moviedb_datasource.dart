import 'package:cinemapedia/config/constants/environment.dart';
import 'package:cinemapedia/domain/datasource/movies_datasource.dart';
import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:dio/dio.dart';

class MovieDbDatasource extends MoviesDataSource {
  final dio = Dio(
    BaseOptions(baseUrl: 'https://api.themoviedb.org/3', queryParameters: {
      'api-key': Environment.theMovieDbKey,
      'language': 'es-MX'
    }),
  );

  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) async {
    final response = await dio.get('/movie/now_playing');
    // TODO: Crear modelo para la data del response y un mapper para que corresponda con nuestra entidad Movie
    List<Movie> movies = [];
    return movies;
  }
}
