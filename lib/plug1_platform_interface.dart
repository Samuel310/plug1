import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'plug1_method_channel.dart';

abstract class Plug1Platform extends PlatformInterface {
  /// Constructs a Plug1Platform.
  Plug1Platform() : super(token: _token);

  static final Object _token = Object();

  static Plug1Platform _instance = MethodChannelPlug1();

  /// The default instance of [Plug1Platform] to use.
  ///
  /// Defaults to [MethodChannelPlug1].
  static Plug1Platform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [Plug1Platform] when
  /// they register themselves.
  static set instance(Plug1Platform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<bool?> showToast(String msg) {
    throw UnimplementedError('showToast() has not been implemented.');
  }
}
