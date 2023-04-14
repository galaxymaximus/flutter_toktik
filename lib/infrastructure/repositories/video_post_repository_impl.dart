import 'package:toktik/domain/datasources/video_post_datasource.dart';
import 'package:toktik/domain/entitites/video_post.dart';
import 'package:toktik/domain/repositories/video_post_repository.dart';



class VideoPostsRepositoryImpl implements VideoPostRepository {

 
  final VideoPostDatasource videosDatasource;

   // Cuando se utilice el Repository al hacerlo de esta manera, cualquier video del Datasource es permitido, web, local, json, etc.
  VideoPostsRepositoryImpl({
    required this.videosDatasource
  });

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return videosDatasource.getTrendingVideosByPage(page);
  }

}