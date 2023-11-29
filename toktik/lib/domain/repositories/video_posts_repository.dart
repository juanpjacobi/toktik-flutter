import 'package:toktik/domain/entities/video_post.dart';

abstract class VideoPostsRepository {
  Future<List<VideoPost>> getTrendingVideosByPage(int page);
  Future<List<VideoPost>> getFavoritesVideosByUser(String userId);
}
