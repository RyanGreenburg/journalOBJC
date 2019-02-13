//
//  RLGEntryController.h
//  JournalOBJC
//
//  Created by RYAN GREENBURG on 2/11/19.
//  Copyright © 2019 RYAN GREENBURG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RLGEntry.h"

NS_ASSUME_NONNULL_BEGIN

@interface RLGEntryController : NSObject

@property (nonatomic, strong) NSMutableArray *entries;

+ (RLGEntryController *) sharedInstance;

- (void)addEntry:(RLGEntry *)entry;

- (void)removeEntry:(RLGEntry *)entry;

- (void)modifyEntry:(RLGEntry *)entry
          withTitle:(NSString *)title
               body:(NSString *)body;

//- (NSDictionary *)dictionaryCopy:(RLGEntry *)entry;

@end

NS_ASSUME_NONNULL_END
