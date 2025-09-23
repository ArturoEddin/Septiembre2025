import 'package:toktik/domain/entities/video_post.dart';

abstract class VideoPostRepistory {
  Future <List<VideoPost>>getFavoriteVideosByUser(String userId);
  Future <List<VideoPost>>getTredingVideosByPage(int page);
  
}
