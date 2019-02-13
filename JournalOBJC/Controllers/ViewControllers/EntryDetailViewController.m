//
//  EntryDetailViewController.m
//  JournalOBJC
//
//  Created by RYAN GREENBURG on 2/11/19.
//  Copyright © 2019 RYAN GREENBURG. All rights reserved.
//

#import "EntryDetailViewController.h"
#import "RLGEntryController.h"

@interface EntryDetailViewController ()

@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextView *bodyTextView;

@end

@implementation EntryDetailViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    [[_titleTextField self] delegate];
    [self updateViews];
}

- (void)updateViews
{
    if (_entry) {
        _titleTextField.text = [_entry title];
        _bodyTextView.text = [_entry body];
    }
}

- (bool)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return true;
}

- (IBAction)clearButtonTapped:(id)sender {
    _bodyTextView.text = @"";
}

- (IBAction)saveButtonTapped:(id)sender {
    NSString *title = _titleTextField.text;
    NSString *body = _bodyTextView.text;
    
    
    if (_entry) {
        [[RLGEntryController sharedInstance]modifyEntry:_entry withTitle:title body:body];
    } else {
        RLGEntry *entryToAdd = [[RLGEntry alloc] initWithTitle:title body:body];
        [[RLGEntryController sharedInstance]addEntry:entryToAdd];
    }
    [[self navigationController]popViewControllerAnimated:true];
}


@end
