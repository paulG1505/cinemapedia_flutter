//la idea del data source es definir el origen de los datos
import 'package:cinemapedia/domain/entities/movie.dart';

abstract class MovieDataSource{
  Future<List<Movie>> getNowPlaying({int page=1});
}