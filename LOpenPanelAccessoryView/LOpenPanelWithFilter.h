//
//  LOpenPanelWithFilter.h
//  LOpenPanelAccessoryView
//
//  Created by AnarLong on 2017/3/7.
//  Copyright © 2017年 __CompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

#define kFilterSizeKey @"FilterSizeKey"

@interface LOpenPanelWithFilter : NSOpenPanel

/**
 OpenPanel with fitler options

 @param options Fitler options
 @Note
    1. Option's key is will show for user to read. Values means the open type filters,  the type of value is Array.
 
    2. Options must have the kFilterSizeKey and proper value for the fitler(PopUpButton). Use NSStringFromRect() save NSRect
 
    3. For example:
 
        kFitlerSizeKey : @"{{0, 0}, {200, 21}}"
 
        @"H.264 Files" : @[@"mp4", @"mov", @"mkv"]
 
 @return return LOpenPanelWithFilter instance.
 */
+ (instancetype)openPanelWithFilterOptions:(NSDictionary  *)options;

@end
