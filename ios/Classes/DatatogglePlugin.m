#import "DatatogglePlugin.h"
#if __has_include(<datatoggle/datatoggle-Swift.h>)
#import <datatoggle/datatoggle-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "datatoggle-Swift.h"
#endif

@implementation DatatogglePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftDatatogglePlugin registerWithRegistrar:registrar];
}
@end
