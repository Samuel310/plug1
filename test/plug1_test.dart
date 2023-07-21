import 'package:flutter_test/flutter_test.dart';
import 'package:plug1/plug1.dart';
import 'package:plug1/plug1_platform_interface.dart';
import 'package:plug1/plug1_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockPlug1Platform
    with MockPlatformInterfaceMixin
    implements Plug1Platform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');

  @override
  Future<bool?> showToast(String msg) {
    throw UnimplementedError();
  }
}

void main() {
  final Plug1Platform initialPlatform = Plug1Platform.instance;

  test('$MethodChannelPlug1 is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelPlug1>());
  });

  test('getPlatformVersion', () async {
    Plug1 plug1Plugin = Plug1();
    MockPlug1Platform fakePlatform = MockPlug1Platform();
    Plug1Platform.instance = fakePlatform;

    expect(await plug1Plugin.getPlatformVersion(), '42');
  });
}
