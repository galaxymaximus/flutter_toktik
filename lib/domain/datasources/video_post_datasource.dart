import 'package:toktik/domain/entitites/video_post.dart';

abstract class VideoPostDatasource {

  // no se implementa, no importa como va a funcionar el método

  Future<List<VideoPost>> getFavoriteVideosByUser(String userID);

  Future<List<VideoPost>> getTrendingVideosByPage(int page);

}