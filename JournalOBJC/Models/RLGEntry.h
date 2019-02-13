//
//  RLGEntry.h
//  JournalOBJC
//
//  Created by RYAN GREENBURG on 2/11/19.
//  Copyright © 2019 RYAN GREENBURG. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RLGEntry : NSObject

@property (nonatomic, readwrite) NSString *title;
@property (nonatomic, readwrite) NSString *body;
@property (nonatomic, readwrite) NSDate *timestamp;

- (instancetype) initWithTitle:(NSString *)title
                          body:(NSString *)body;

@end

NS_ASSUME_NONNULL_END
