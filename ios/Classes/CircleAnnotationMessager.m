// Autogenerated from Pigeon (v16.0.0), do not edit directly.
// See also: https://pub.dev/packages/pigeon

#import "CircleAnnotationMessager.h"

#if TARGET_OS_OSX
#import <FlutterMacOS/FlutterMacOS.h>
#else
#import <Flutter/Flutter.h>
#endif

#if !__has_feature(objc_arc)
#error File requires ARC to be enabled.
#endif

static NSArray *wrapResult(id result, FlutterError *error) {
  if (error) {
    return @[
      error.code ?: [NSNull null], error.message ?: [NSNull null], error.details ?: [NSNull null]
    ];
  }
  return @[ result ?: [NSNull null] ];
}

static FlutterError *createConnectionError(NSString *channelName) {
  return [FlutterError errorWithCode:@"channel-error" message:[NSString stringWithFormat:@"%@/%@/%@", @"Unable to establish connection on channel: '", channelName, @"'."] details:@""];
}

static id GetNullableObjectAtIndex(NSArray *array, NSInteger key) {
  id result = array[key];
  return (result == [NSNull null]) ? nil : result;
}

/// Orientation of circle when map is pitched.
@implementation FLTCirclePitchAlignmentBox
- (instancetype)initWithValue:(FLTCirclePitchAlignment)value {
  self = [super init];
  if (self) {
    _value = value;
  }
  return self;
}
@end

/// Controls the scaling behavior of the circle when the map is pitched.
@implementation FLTCirclePitchScaleBox
- (instancetype)initWithValue:(FLTCirclePitchScale)value {
  self = [super init];
  if (self) {
    _value = value;
  }
  return self;
}
@end

/// Controls the frame of reference for `circle-translate`.
@implementation FLTCircleTranslateAnchorBox
- (instancetype)initWithValue:(FLTCircleTranslateAnchor)value {
  self = [super init];
  if (self) {
    _value = value;
  }
  return self;
}
@end

@interface FLTCircleAnnotation ()
+ (FLTCircleAnnotation *)fromList:(NSArray *)list;
+ (nullable FLTCircleAnnotation *)nullableFromList:(NSArray *)list;
- (NSArray *)toList;
@end

@interface FLTCircleAnnotationOptions ()
+ (FLTCircleAnnotationOptions *)fromList:(NSArray *)list;
+ (nullable FLTCircleAnnotationOptions *)nullableFromList:(NSArray *)list;
- (NSArray *)toList;
@end

@implementation FLTCircleAnnotation
+ (instancetype)makeWithId:(NSString *)id
    geometry:(nullable NSDictionary<NSString *, id> *)geometry
    circleSortKey:(nullable NSNumber *)circleSortKey
    circleBlur:(nullable NSNumber *)circleBlur
    circleColor:(nullable NSNumber *)circleColor
    circleOpacity:(nullable NSNumber *)circleOpacity
    circleRadius:(nullable NSNumber *)circleRadius
    circleStrokeColor:(nullable NSNumber *)circleStrokeColor
    circleStrokeOpacity:(nullable NSNumber *)circleStrokeOpacity
    circleStrokeWidth:(nullable NSNumber *)circleStrokeWidth {
  FLTCircleAnnotation* pigeonResult = [[FLTCircleAnnotation alloc] init];
  pigeonResult.id = id;
  pigeonResult.geometry = geometry;
  pigeonResult.circleSortKey = circleSortKey;
  pigeonResult.circleBlur = circleBlur;
  pigeonResult.circleColor = circleColor;
  pigeonResult.circleOpacity = circleOpacity;
  pigeonResult.circleRadius = circleRadius;
  pigeonResult.circleStrokeColor = circleStrokeColor;
  pigeonResult.circleStrokeOpacity = circleStrokeOpacity;
  pigeonResult.circleStrokeWidth = circleStrokeWidth;
  return pigeonResult;
}
+ (FLTCircleAnnotation *)fromList:(NSArray *)list {
  FLTCircleAnnotation *pigeonResult = [[FLTCircleAnnotation alloc] init];
  pigeonResult.id = GetNullableObjectAtIndex(list, 0);
  pigeonResult.geometry = GetNullableObjectAtIndex(list, 1);
  pigeonResult.circleSortKey = GetNullableObjectAtIndex(list, 2);
  pigeonResult.circleBlur = GetNullableObjectAtIndex(list, 3);
  pigeonResult.circleColor = GetNullableObjectAtIndex(list, 4);
  pigeonResult.circleOpacity = GetNullableObjectAtIndex(list, 5);
  pigeonResult.circleRadius = GetNullableObjectAtIndex(list, 6);
  pigeonResult.circleStrokeColor = GetNullableObjectAtIndex(list, 7);
  pigeonResult.circleStrokeOpacity = GetNullableObjectAtIndex(list, 8);
  pigeonResult.circleStrokeWidth = GetNullableObjectAtIndex(list, 9);
  return pigeonResult;
}
+ (nullable FLTCircleAnnotation *)nullableFromList:(NSArray *)list {
  return (list) ? [FLTCircleAnnotation fromList:list] : nil;
}
- (NSArray *)toList {
  return @[
    self.id ?: [NSNull null],
    self.geometry ?: [NSNull null],
    self.circleSortKey ?: [NSNull null],
    self.circleBlur ?: [NSNull null],
    self.circleColor ?: [NSNull null],
    self.circleOpacity ?: [NSNull null],
    self.circleRadius ?: [NSNull null],
    self.circleStrokeColor ?: [NSNull null],
    self.circleStrokeOpacity ?: [NSNull null],
    self.circleStrokeWidth ?: [NSNull null],
  ];
}
@end

@implementation FLTCircleAnnotationOptions
+ (instancetype)makeWithGeometry:(nullable NSDictionary<NSString *, id> *)geometry
    circleSortKey:(nullable NSNumber *)circleSortKey
    circleBlur:(nullable NSNumber *)circleBlur
    circleColor:(nullable NSNumber *)circleColor
    circleOpacity:(nullable NSNumber *)circleOpacity
    circleRadius:(nullable NSNumber *)circleRadius
    circleStrokeColor:(nullable NSNumber *)circleStrokeColor
    circleStrokeOpacity:(nullable NSNumber *)circleStrokeOpacity
    circleStrokeWidth:(nullable NSNumber *)circleStrokeWidth {
  FLTCircleAnnotationOptions* pigeonResult = [[FLTCircleAnnotationOptions alloc] init];
  pigeonResult.geometry = geometry;
  pigeonResult.circleSortKey = circleSortKey;
  pigeonResult.circleBlur = circleBlur;
  pigeonResult.circleColor = circleColor;
  pigeonResult.circleOpacity = circleOpacity;
  pigeonResult.circleRadius = circleRadius;
  pigeonResult.circleStrokeColor = circleStrokeColor;
  pigeonResult.circleStrokeOpacity = circleStrokeOpacity;
  pigeonResult.circleStrokeWidth = circleStrokeWidth;
  return pigeonResult;
}
+ (FLTCircleAnnotationOptions *)fromList:(NSArray *)list {
  FLTCircleAnnotationOptions *pigeonResult = [[FLTCircleAnnotationOptions alloc] init];
  pigeonResult.geometry = GetNullableObjectAtIndex(list, 0);
  pigeonResult.circleSortKey = GetNullableObjectAtIndex(list, 1);
  pigeonResult.circleBlur = GetNullableObjectAtIndex(list, 2);
  pigeonResult.circleColor = GetNullableObjectAtIndex(list, 3);
  pigeonResult.circleOpacity = GetNullableObjectAtIndex(list, 4);
  pigeonResult.circleRadius = GetNullableObjectAtIndex(list, 5);
  pigeonResult.circleStrokeColor = GetNullableObjectAtIndex(list, 6);
  pigeonResult.circleStrokeOpacity = GetNullableObjectAtIndex(list, 7);
  pigeonResult.circleStrokeWidth = GetNullableObjectAtIndex(list, 8);
  return pigeonResult;
}
+ (nullable FLTCircleAnnotationOptions *)nullableFromList:(NSArray *)list {
  return (list) ? [FLTCircleAnnotationOptions fromList:list] : nil;
}
- (NSArray *)toList {
  return @[
    self.geometry ?: [NSNull null],
    self.circleSortKey ?: [NSNull null],
    self.circleBlur ?: [NSNull null],
    self.circleColor ?: [NSNull null],
    self.circleOpacity ?: [NSNull null],
    self.circleRadius ?: [NSNull null],
    self.circleStrokeColor ?: [NSNull null],
    self.circleStrokeOpacity ?: [NSNull null],
    self.circleStrokeWidth ?: [NSNull null],
  ];
}
@end

@interface FLTOnCircleAnnotationClickListenerCodecReader : FlutterStandardReader
@end
@implementation FLTOnCircleAnnotationClickListenerCodecReader
- (nullable id)readValueOfType:(UInt8)type {
  switch (type) {
    case 128: 
      return [FLTCircleAnnotation fromList:[self readValue]];
    default:
      return [super readValueOfType:type];
  }
}
@end

@interface FLTOnCircleAnnotationClickListenerCodecWriter : FlutterStandardWriter
@end
@implementation FLTOnCircleAnnotationClickListenerCodecWriter
- (void)writeValue:(id)value {
  if ([value isKindOfClass:[FLTCircleAnnotation class]]) {
    [self writeByte:128];
    [self writeValue:[value toList]];
  } else {
    [super writeValue:value];
  }
}
@end

@interface FLTOnCircleAnnotationClickListenerCodecReaderWriter : FlutterStandardReaderWriter
@end
@implementation FLTOnCircleAnnotationClickListenerCodecReaderWriter
- (FlutterStandardWriter *)writerWithData:(NSMutableData *)data {
  return [[FLTOnCircleAnnotationClickListenerCodecWriter alloc] initWithData:data];
}
- (FlutterStandardReader *)readerWithData:(NSData *)data {
  return [[FLTOnCircleAnnotationClickListenerCodecReader alloc] initWithData:data];
}
@end

NSObject<FlutterMessageCodec> *FLTOnCircleAnnotationClickListenerGetCodec(void) {
  static FlutterStandardMessageCodec *sSharedObject = nil;
  static dispatch_once_t sPred = 0;
  dispatch_once(&sPred, ^{
    FLTOnCircleAnnotationClickListenerCodecReaderWriter *readerWriter = [[FLTOnCircleAnnotationClickListenerCodecReaderWriter alloc] init];
    sSharedObject = [FlutterStandardMessageCodec codecWithReaderWriter:readerWriter];
  });
  return sSharedObject;
}

@interface FLTOnCircleAnnotationClickListener ()
@property(nonatomic, strong) NSObject<FlutterBinaryMessenger> *binaryMessenger;
@end

@implementation FLTOnCircleAnnotationClickListener

- (instancetype)initWithBinaryMessenger:(NSObject<FlutterBinaryMessenger> *)binaryMessenger {
  self = [super init];
  if (self) {
    _binaryMessenger = binaryMessenger;
  }
  return self;
}
- (void)onCircleAnnotationClickAnnotation:(FLTCircleAnnotation *)arg_annotation completion:(void (^)(FlutterError *_Nullable))completion {
  NSString *channelName = @"dev.flutter.pigeon.mapbox_maps_flutter.OnCircleAnnotationClickListener.onCircleAnnotationClick";
  FlutterBasicMessageChannel *channel =
    [FlutterBasicMessageChannel
      messageChannelWithName:channelName
      binaryMessenger:self.binaryMessenger
      codec:FLTOnCircleAnnotationClickListenerGetCodec()];
  [channel sendMessage:@[arg_annotation ?: [NSNull null]] reply:^(NSArray<id> *reply) {
    if (reply != nil) {
      if (reply.count > 1) {
        completion([FlutterError errorWithCode:reply[0] message:reply[1] details:reply[2]]);
      } else {
        completion(nil);
      }
    } else {
      completion(createConnectionError(channelName));
    } 
  }];
}
@end

@interface FLT_CircleAnnotationMessagerCodecReader : FlutterStandardReader
@end
@implementation FLT_CircleAnnotationMessagerCodecReader
- (nullable id)readValueOfType:(UInt8)type {
  switch (type) {
    case 128: 
      return [FLTCircleAnnotation fromList:[self readValue]];
    case 129: 
      return [FLTCircleAnnotation fromList:[self readValue]];
    case 130: 
      return [FLTCircleAnnotationOptions fromList:[self readValue]];
    case 131: 
      return [FLTCircleAnnotationOptions fromList:[self readValue]];
    default:
      return [super readValueOfType:type];
  }
}
@end

@interface FLT_CircleAnnotationMessagerCodecWriter : FlutterStandardWriter
@end
@implementation FLT_CircleAnnotationMessagerCodecWriter
- (void)writeValue:(id)value {
  if ([value isKindOfClass:[FLTCircleAnnotation class]]) {
    [self writeByte:128];
    [self writeValue:[value toList]];
  } else if ([value isKindOfClass:[FLTCircleAnnotation class]]) {
    [self writeByte:129];
    [self writeValue:[value toList]];
  } else if ([value isKindOfClass:[FLTCircleAnnotationOptions class]]) {
    [self writeByte:130];
    [self writeValue:[value toList]];
  } else if ([value isKindOfClass:[FLTCircleAnnotationOptions class]]) {
    [self writeByte:131];
    [self writeValue:[value toList]];
  } else {
    [super writeValue:value];
  }
}
@end

@interface FLT_CircleAnnotationMessagerCodecReaderWriter : FlutterStandardReaderWriter
@end
@implementation FLT_CircleAnnotationMessagerCodecReaderWriter
- (FlutterStandardWriter *)writerWithData:(NSMutableData *)data {
  return [[FLT_CircleAnnotationMessagerCodecWriter alloc] initWithData:data];
}
- (FlutterStandardReader *)readerWithData:(NSData *)data {
  return [[FLT_CircleAnnotationMessagerCodecReader alloc] initWithData:data];
}
@end

NSObject<FlutterMessageCodec> *FLT_CircleAnnotationMessagerGetCodec(void) {
  static FlutterStandardMessageCodec *sSharedObject = nil;
  static dispatch_once_t sPred = 0;
  dispatch_once(&sPred, ^{
    FLT_CircleAnnotationMessagerCodecReaderWriter *readerWriter = [[FLT_CircleAnnotationMessagerCodecReaderWriter alloc] init];
    sSharedObject = [FlutterStandardMessageCodec codecWithReaderWriter:readerWriter];
  });
  return sSharedObject;
}

void SetUpFLT_CircleAnnotationMessager(id<FlutterBinaryMessenger> binaryMessenger, NSObject<FLT_CircleAnnotationMessager> *api) {
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.mapbox_maps_flutter._CircleAnnotationMessager.create"
        binaryMessenger:binaryMessenger
        codec:FLT_CircleAnnotationMessagerGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(createManagerId:annotationOption:completion:)], @"FLT_CircleAnnotationMessager api (%@) doesn't respond to @selector(createManagerId:annotationOption:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_managerId = GetNullableObjectAtIndex(args, 0);
        FLTCircleAnnotationOptions *arg_annotationOption = GetNullableObjectAtIndex(args, 1);
        [api createManagerId:arg_managerId annotationOption:arg_annotationOption completion:^(FLTCircleAnnotation *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.mapbox_maps_flutter._CircleAnnotationMessager.createMulti"
        binaryMessenger:binaryMessenger
        codec:FLT_CircleAnnotationMessagerGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(createMultiManagerId:annotationOptions:completion:)], @"FLT_CircleAnnotationMessager api (%@) doesn't respond to @selector(createMultiManagerId:annotationOptions:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_managerId = GetNullableObjectAtIndex(args, 0);
        NSArray<FLTCircleAnnotationOptions *> *arg_annotationOptions = GetNullableObjectAtIndex(args, 1);
        [api createMultiManagerId:arg_managerId annotationOptions:arg_annotationOptions completion:^(NSArray<FLTCircleAnnotation *> *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.mapbox_maps_flutter._CircleAnnotationMessager.update"
        binaryMessenger:binaryMessenger
        codec:FLT_CircleAnnotationMessagerGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(updateManagerId:annotation:completion:)], @"FLT_CircleAnnotationMessager api (%@) doesn't respond to @selector(updateManagerId:annotation:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_managerId = GetNullableObjectAtIndex(args, 0);
        FLTCircleAnnotation *arg_annotation = GetNullableObjectAtIndex(args, 1);
        [api updateManagerId:arg_managerId annotation:arg_annotation completion:^(FlutterError *_Nullable error) {
          callback(wrapResult(nil, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.mapbox_maps_flutter._CircleAnnotationMessager.delete"
        binaryMessenger:binaryMessenger
        codec:FLT_CircleAnnotationMessagerGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(deleteManagerId:annotation:completion:)], @"FLT_CircleAnnotationMessager api (%@) doesn't respond to @selector(deleteManagerId:annotation:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_managerId = GetNullableObjectAtIndex(args, 0);
        FLTCircleAnnotation *arg_annotation = GetNullableObjectAtIndex(args, 1);
        [api deleteManagerId:arg_managerId annotation:arg_annotation completion:^(FlutterError *_Nullable error) {
          callback(wrapResult(nil, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.mapbox_maps_flutter._CircleAnnotationMessager.deleteAll"
        binaryMessenger:binaryMessenger
        codec:FLT_CircleAnnotationMessagerGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(deleteAllManagerId:completion:)], @"FLT_CircleAnnotationMessager api (%@) doesn't respond to @selector(deleteAllManagerId:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_managerId = GetNullableObjectAtIndex(args, 0);
        [api deleteAllManagerId:arg_managerId completion:^(FlutterError *_Nullable error) {
          callback(wrapResult(nil, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.mapbox_maps_flutter._CircleAnnotationMessager.setCircleEmissiveStrength"
        binaryMessenger:binaryMessenger
        codec:FLT_CircleAnnotationMessagerGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(setCircleEmissiveStrengthManagerId:circleEmissiveStrength:completion:)], @"FLT_CircleAnnotationMessager api (%@) doesn't respond to @selector(setCircleEmissiveStrengthManagerId:circleEmissiveStrength:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_managerId = GetNullableObjectAtIndex(args, 0);
        double arg_circleEmissiveStrength = [GetNullableObjectAtIndex(args, 1) doubleValue];
        [api setCircleEmissiveStrengthManagerId:arg_managerId circleEmissiveStrength:arg_circleEmissiveStrength completion:^(FlutterError *_Nullable error) {
          callback(wrapResult(nil, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.mapbox_maps_flutter._CircleAnnotationMessager.getCircleEmissiveStrength"
        binaryMessenger:binaryMessenger
        codec:FLT_CircleAnnotationMessagerGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(getCircleEmissiveStrengthManagerId:completion:)], @"FLT_CircleAnnotationMessager api (%@) doesn't respond to @selector(getCircleEmissiveStrengthManagerId:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_managerId = GetNullableObjectAtIndex(args, 0);
        [api getCircleEmissiveStrengthManagerId:arg_managerId completion:^(NSNumber *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.mapbox_maps_flutter._CircleAnnotationMessager.setCirclePitchAlignment"
        binaryMessenger:binaryMessenger
        codec:FLT_CircleAnnotationMessagerGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(setCirclePitchAlignmentManagerId:circlePitchAlignment:completion:)], @"FLT_CircleAnnotationMessager api (%@) doesn't respond to @selector(setCirclePitchAlignmentManagerId:circlePitchAlignment:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_managerId = GetNullableObjectAtIndex(args, 0);
        FLTCirclePitchAlignment arg_circlePitchAlignment = [GetNullableObjectAtIndex(args, 1) integerValue];
        [api setCirclePitchAlignmentManagerId:arg_managerId circlePitchAlignment:arg_circlePitchAlignment completion:^(FlutterError *_Nullable error) {
          callback(wrapResult(nil, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.mapbox_maps_flutter._CircleAnnotationMessager.getCirclePitchAlignment"
        binaryMessenger:binaryMessenger
        codec:FLT_CircleAnnotationMessagerGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(getCirclePitchAlignmentManagerId:completion:)], @"FLT_CircleAnnotationMessager api (%@) doesn't respond to @selector(getCirclePitchAlignmentManagerId:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_managerId = GetNullableObjectAtIndex(args, 0);
        [api getCirclePitchAlignmentManagerId:arg_managerId completion:^(FLTCirclePitchAlignmentBox *_Nullable enumValue, FlutterError *_Nullable error) {
          NSNumber *output = enumValue == nil ? nil : [NSNumber numberWithInteger:enumValue.value];
          callback(wrapResult(output, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.mapbox_maps_flutter._CircleAnnotationMessager.setCirclePitchScale"
        binaryMessenger:binaryMessenger
        codec:FLT_CircleAnnotationMessagerGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(setCirclePitchScaleManagerId:circlePitchScale:completion:)], @"FLT_CircleAnnotationMessager api (%@) doesn't respond to @selector(setCirclePitchScaleManagerId:circlePitchScale:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_managerId = GetNullableObjectAtIndex(args, 0);
        FLTCirclePitchScale arg_circlePitchScale = [GetNullableObjectAtIndex(args, 1) integerValue];
        [api setCirclePitchScaleManagerId:arg_managerId circlePitchScale:arg_circlePitchScale completion:^(FlutterError *_Nullable error) {
          callback(wrapResult(nil, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.mapbox_maps_flutter._CircleAnnotationMessager.getCirclePitchScale"
        binaryMessenger:binaryMessenger
        codec:FLT_CircleAnnotationMessagerGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(getCirclePitchScaleManagerId:completion:)], @"FLT_CircleAnnotationMessager api (%@) doesn't respond to @selector(getCirclePitchScaleManagerId:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_managerId = GetNullableObjectAtIndex(args, 0);
        [api getCirclePitchScaleManagerId:arg_managerId completion:^(FLTCirclePitchScaleBox *_Nullable enumValue, FlutterError *_Nullable error) {
          NSNumber *output = enumValue == nil ? nil : [NSNumber numberWithInteger:enumValue.value];
          callback(wrapResult(output, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.mapbox_maps_flutter._CircleAnnotationMessager.setCircleTranslate"
        binaryMessenger:binaryMessenger
        codec:FLT_CircleAnnotationMessagerGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(setCircleTranslateManagerId:circleTranslate:completion:)], @"FLT_CircleAnnotationMessager api (%@) doesn't respond to @selector(setCircleTranslateManagerId:circleTranslate:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_managerId = GetNullableObjectAtIndex(args, 0);
        NSArray<NSNumber *> *arg_circleTranslate = GetNullableObjectAtIndex(args, 1);
        [api setCircleTranslateManagerId:arg_managerId circleTranslate:arg_circleTranslate completion:^(FlutterError *_Nullable error) {
          callback(wrapResult(nil, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.mapbox_maps_flutter._CircleAnnotationMessager.getCircleTranslate"
        binaryMessenger:binaryMessenger
        codec:FLT_CircleAnnotationMessagerGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(getCircleTranslateManagerId:completion:)], @"FLT_CircleAnnotationMessager api (%@) doesn't respond to @selector(getCircleTranslateManagerId:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_managerId = GetNullableObjectAtIndex(args, 0);
        [api getCircleTranslateManagerId:arg_managerId completion:^(NSArray<NSNumber *> *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.mapbox_maps_flutter._CircleAnnotationMessager.setCircleTranslateAnchor"
        binaryMessenger:binaryMessenger
        codec:FLT_CircleAnnotationMessagerGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(setCircleTranslateAnchorManagerId:circleTranslateAnchor:completion:)], @"FLT_CircleAnnotationMessager api (%@) doesn't respond to @selector(setCircleTranslateAnchorManagerId:circleTranslateAnchor:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_managerId = GetNullableObjectAtIndex(args, 0);
        FLTCircleTranslateAnchor arg_circleTranslateAnchor = [GetNullableObjectAtIndex(args, 1) integerValue];
        [api setCircleTranslateAnchorManagerId:arg_managerId circleTranslateAnchor:arg_circleTranslateAnchor completion:^(FlutterError *_Nullable error) {
          callback(wrapResult(nil, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.mapbox_maps_flutter._CircleAnnotationMessager.getCircleTranslateAnchor"
        binaryMessenger:binaryMessenger
        codec:FLT_CircleAnnotationMessagerGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(getCircleTranslateAnchorManagerId:completion:)], @"FLT_CircleAnnotationMessager api (%@) doesn't respond to @selector(getCircleTranslateAnchorManagerId:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSString *arg_managerId = GetNullableObjectAtIndex(args, 0);
        [api getCircleTranslateAnchorManagerId:arg_managerId completion:^(FLTCircleTranslateAnchorBox *_Nullable enumValue, FlutterError *_Nullable error) {
          NSNumber *output = enumValue == nil ? nil : [NSNumber numberWithInteger:enumValue.value];
          callback(wrapResult(output, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
}
