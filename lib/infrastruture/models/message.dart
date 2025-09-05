import 'package:toktik/infrastruture/models/local_video_model.dart';

class Message {
  final String text;
  final DateTime date;
  final bool isLocalVideo;
  final LocalVideoModel? localVideo;

  Message({
    required this.text,
    required this.date,
    this.isLocalVideo = false,
    this.localVideo,
  });
}