//
//  AppDelegate.m
//  LOpenPanelAccessoryView
//
//  Created by AnarLong on 2017/3/7.
//  Copyright © 2017年 __CompanyName__. All rights reserved.
//

#import "AppDelegate.h"
#import "LOpenPanelWithFilter.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (IBAction)open:(id)sender {
    
    NSDictionary * option = @{kFilterSizeKey : NSStringFromRect(NSMakeRect(0, 0, 500, 22)), @"MP4 Files(*.mp4, *.mov)" : @[@"mp4", @"mov", @"avi"], @"All types.(*.*)" : @[]};
    LOpenPanelWithFilter * op = [LOpenPanelWithFilter openPanelWithFilterOptions:option];
    NSUInteger state = [op runModal];
    
    if (state == NSOKButton) {
        NSLog(@"%@", [[[op URLs] firstObject] path]);
    }
}

@end
