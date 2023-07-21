import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'plug1_platform_interface.dart';

/// An implementation of [Plug1Platform] that uses method channels.
class MethodChannelPlug1 extends Plug1Platform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('plug1');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<bool?> showToast(String msg) async {
    final version =
        await methodChannel.invokeMethod<bool>('showToast', {"msg": msg});
    return version;
  }
}
