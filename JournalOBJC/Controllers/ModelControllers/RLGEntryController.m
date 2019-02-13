//
//  RLGEntryController.m
//  JournalOBJC
//
//  Created by RYAN GREENBURG on 2/11/19.
//  Copyright © 2019 RYAN GREENBURG. All rights reserved.
//

#import "RLGEntryController.h"
#import "RLGEntry.h"

@implementation RLGEntryController

+ (RLGEntryController *)sharedInstance
{
    static RLGEntryController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [RLGEntryController new];
    });
    return sharedInstance;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _entries = [NSMutableArray new];
    }
    return self;
}

- (void)addEntry:(RLGEntry *)entry
{
    [_entries addObject:entry];
}

- (void)removeEntry:(RLGEntry *)entry
{
    [_entries indexOfObject:entry];
    [_entries removeObject:entry];
}

- (void)modifyEntry:(RLGEntry *)entry withTitle:(NSString *)title body:(NSString *)body
{
    [_entries indexOfObject:entry];
    entry.title = title;
    entry.body = body;
}

//- (NSDictionary *)dictionaryCopy:(RLGEntry *)entry
//{
//    static NSString * const TimeStampKey = @"timestamp";
//    
//}

@end
