//
//  RLGEntry.m
//  JournalOBJC
//
//  Created by RYAN GREENBURG on 2/11/19.
//  Copyright © 2019 RYAN GREENBURG. All rights reserved.
//

#import "RLGEntry.h"

@implementation RLGEntry

- (instancetype)initWithTitle:(NSString *)title
                         body:(NSString *)body
{
    self = [super init];
    if (self) {
        _title = title;
        _body = body;
        _timestamp = NSDate.date;
    }
    return self;
}

@end
