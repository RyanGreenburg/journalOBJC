//
//  EntryDetailViewController.h
//  JournalOBJC
//
//  Created by RYAN GREENBURG on 2/11/19.
//  Copyright © 2019 RYAN GREENBURG. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class RLGEntry;

@interface EntryDetailViewController : UIViewController

@property (nonatomic, strong) RLGEntry *entry;

- (void)updateViews;

@end

NS_ASSUME_NONNULL_END
