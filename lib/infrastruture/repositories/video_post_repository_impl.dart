import 'package:toktik/domain/datasources/video_post_datasource.dart';
import 'package:toktik/domain/entities/video_post.dart';

class VideoPostRepositoryImpl implements VideoPostDatasource {
  
  final VideoPostDatasource videosDatasource;

  VideoPostRepositoryImpl({
    required this.videosDatasource});
  
  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userId) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTredingVideosByPage(int page) {
    return videosDatasource.getTredingVideosByPage(page);
  }
}
