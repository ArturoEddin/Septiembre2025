import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/domain/repositories/video_post_repository.dart';
import 'package:toktik/infrastruture/models/local_video_model.dart';
import 'package:toktik/infrastruture/repositories/video_post_repository_impl.dart';
import 'package:toktik/shared/data/local_video_posts.dart';

class DiscoverProvider extends ChangeNotifier{

  final VideoPostRepository videosRepository;

  DiscoverProvider({required this.videosRepository});


  bool initialLoading = true;

  List<VideoPost> videos = [];

  Future<void> loadingNextPage() async{
   //await Future.delayed(const Duration(seconds: 2));
  //final List<VideoPost> newVideos = videoPosts.map((video)=>LocalVideoModel.fromJsonMap(video).toVideoPostEntity()).toList();
    
    final newVideos = await videosRepository.getTrendingVideosByPage(1);
    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }


  

}