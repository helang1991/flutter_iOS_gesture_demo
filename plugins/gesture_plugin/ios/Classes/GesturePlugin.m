#import "GesturePlugin.h"
#import "BBViewController.h"

@implementation GesturePlugin {
   FlutterResult _result;
   UIViewController *_viewController;
}
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FlutterMethodChannel* channel = [FlutterMethodChannel
      methodChannelWithName:@"gesture_plugin"
            binaryMessenger:[registrar messenger]];
  UIViewController *viewController = [UIApplication sharedApplication].delegate.window.rootViewController;
  GesturePlugin* instance = [[GesturePlugin alloc] initWithViewController:viewController];
  [registrar addMethodCallDelegate:instance channel:channel];
}

- (instancetype)initWithViewController:(UIViewController *)viewController {
    self = [super init];
    if (self) {
        _viewController = viewController;
    }
    return self;
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
  if ([@"getPlatformVersion" isEqualToString:call.method]) {
    result([@"iOS " stringByAppendingString:[[UIDevice currentDevice] systemVersion]]);
  } else if([@"gesture" isEqualToString:call.method]) {
    BBViewController* vc = [[BBViewController alloc]init];
    [_viewController presentViewController:vc animated:NO completion:nil];
  } else {
    result(FlutterMethodNotImplemented);
  }
}

@end
