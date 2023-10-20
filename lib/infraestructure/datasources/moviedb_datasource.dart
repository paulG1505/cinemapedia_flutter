import 'package:cinemapedia/config/constants/environment.dart';
import 'package:cinemapedia/domain/datasources/movies_datasource.dart';
import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:dio/dio.dart';

class MoviedbDatasource extends MoviesDataSource {
  final dio = Dio(BaseOptions(
      baseUrl: 'https://api.themoviedb.org/3',
      queryParameters: {
        'api_key': Environment.theMovieDbKey,
        'language': 'es-EC'
      }));
  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) async {
    //usamos paquete dio para llamados http
    final response = await dio.get('/movie/now_playing');
    response.data;
    final List<Movie> movies = [];
    return movies;
  }
}
