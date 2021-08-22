#import "SearchBarPlugin.h"
#if __has_include(<search_bar/search_bar-Swift.h>)
#import <search_bar/search_bar-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "search_bar-Swift.h"
#endif

@implementation SearchBarPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftSearchBarPlugin registerWithRegistrar:registrar];
}
@end
