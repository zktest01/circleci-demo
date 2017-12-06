//
//  MGRSegmentModule.m
//  PSDemoDay2
//
//  Created by Mike Grabowski on 05/12/2017.
//  Copyright © 2017 Facebook. All rights reserved.
//

#import "MGRSegmentModule.h"
#import <Analytics/SEGAnalytics.h>

@implementation MGRSegmentModule

RCT_EXPORT_MODULE(SegmentKit)

RCT_EXPORT_METHOD(identify:(NSString*)name) {
  [[SEGAnalytics sharedAnalytics] identify:name traits:@{}];
}

RCT_EXPORT_METHOD(init:(NSString*)writeKey tag:(NSString*)tag) {
  SEGAnalyticsConfiguration *configuration = [SEGAnalyticsConfiguration configurationWithWriteKey:writeKey];
  [SEGAnalytics setupWithConfiguration:configuration];
}

@end
