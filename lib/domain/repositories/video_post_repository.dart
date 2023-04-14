import 'package:toktik/domain/entitites/video_post.dart';

abstract class VideoPostRepository {

  // El repository va a llamar al Datasource

  Future<List<VideoPost>> getFavoriteVideosByUser(String userID);

  Future<List<VideoPost>> getTrendingVideosByPage(int page);

}