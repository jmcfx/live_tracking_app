


import 'package:live_tracking_app/src/core/config/app_map_config.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

abstract interface class TrackingSocketClient {
  WebSocketChannel get channel;
  void close();
}

class TrackingSocketClientImpl implements TrackingSocketClient {
  @override
  final WebSocketChannel channel;
  TrackingSocketClientImpl() : channel = WebSocketChannel.connect(Uri.parse(AppMapConfig.webSocketUrl));

  @override
  void close() => channel.sink.close();
}





