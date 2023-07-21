import 'plug1_platform_interface.dart';

class Plug1 {
  Future<String?> getPlatformVersion() {
    return Plug1Platform.instance.getPlatformVersion();
  }

  Future<bool?> showToast(String msg) {
    return Plug1Platform.instance.showToast(msg);
  }
}
