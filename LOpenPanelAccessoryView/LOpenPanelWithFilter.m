//
//  LOpenPanelWithFilter.m
//  LOpenPanelAccessoryView
//
//  Created by AnarLong on 2017/3/7.
//  Copyright © 2017年 __CompanyName__. All rights reserved.
//

#import "LOpenPanelWithFilter.h"

@implementation LOpenPanelWithFilter
{
    NSDictionary * _options;
}

static LOpenPanelWithFilter * instance = nil;

+ (instancetype)openPanelWithFilterOptions:(NSDictionary *)options
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = (LOpenPanelWithFilter *)[[super class] openPanel];
    });
    [instance setupFiltersWithOptions:options];
    return instance;
}

- (void)setupFiltersWithOptions:(NSDictionary *)options
{
    NSUInteger count = [[options allKeys] count];
    
    if (count > 1) {
        _options = options;
        NSString * filterSizeValue = [options objectForKey:kFilterSizeKey];
        NSRect filterRect = NSRectFromString(filterSizeValue);
        
        NSPopUpButton * pub = [[NSPopUpButton alloc] initWithFrame:filterRect];
        
        [pub removeAllItems];
        [pub setTarget:self];
        [pub setAction:@selector(popUpButtonAction:)];
        
        for (NSString * title in [_options allKeys]) {
            if ([title isEqualToString:kFilterSizeKey]) {
                continue;
            }
            [pub addItemWithTitle:title];
        }
        
        [pub selectItemAtIndex:0];
        [self popUpButtonAction:pub];
        [self setAccessoryView:pub];
    }
}

- (void)popUpButtonAction:(id)sender
{
    NSString * titleKey = [sender titleOfSelectedItem];
    NSArray * allowedTypes = [_options objectForKey:titleKey];
    if ([allowedTypes count] < 1) {
        [self setAllowedFileTypes:nil];
    } else {
        [self setAllowedFileTypes:allowedTypes];
    }
}

- (void)dealloc
{
    _options = nil;
}

@end
