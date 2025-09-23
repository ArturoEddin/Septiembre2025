import 'package:toktik/domain/datasources/video_post_datasource.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/infrastruture/models/local_video_model.dart';
import 'package:toktik/shared/data/local_video_posts.dart';

class LocalVideoDatasource implements VideoPostDatasource {
  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userId) {
  
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTredingVideosByPage(int page) async {
   
    await Future.delayed(const Duration(seconds: 2));
    final List<VideoPost> newVideos = videoPosts.map((video)=>LocalVideoModel.fromJsonMap(video).toVideoPostEntity()).toList();
    return newVideos;
  
  }

}