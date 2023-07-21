#import "Plug1Plugin.h"
#if __has_include(<plug1/plug1-Swift.h>)
#import <plug1/plug1-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "plug1-Swift.h"
#endif

@implementation Plug1Plugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftPlug1Plugin registerWithRegistrar:registrar];
}
@end
