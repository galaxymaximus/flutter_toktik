

import 'package:flutter/material.dart';
import 'package:toktik/domain/entitites/video_post.dart';
import 'package:toktik/domain/repositories/video_post_repository.dart';
// import 'package:toktik/infrastructure/models/local_video_model.dart';
// import 'package:toktik/shared/data/local_video_posts.dart';

class DiscoverProvider extends ChangeNotifier {

  // Usando Repository y Datasource
  final VideoPostRepository videoRepository;

  bool initialLoading = true;
  List<VideoPost> videos = [];

  DiscoverProvider({
    required this.videoRepository
  });

  Future<void> loadNextPage() async {

    // final List<VideoPost> newVideos = videoPosts.map( 
    //   ( video ) => LocalVideoModel.fromJson(video).toVideoPostEntity()
    // ).toList();

    final newVideos = await videoRepository.getTrendingVideosByPage(1);

    videos.addAll(newVideos);
    initialLoading = false;

    notifyListeners();
  }

}