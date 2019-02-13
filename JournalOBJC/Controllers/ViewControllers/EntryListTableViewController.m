//
//  EntryListTableViewController.m
//  JournalOBJC
//
//  Created by RYAN GREENBURG on 2/11/19.
//  Copyright © 2019 RYAN GREENBURG. All rights reserved.
//

#import "EntryListTableViewController.h"
#import "RLGEntryController.h"
#import "RLGEntry.h"
#import "EntryDetailViewController.h"

@interface EntryListTableViewController ()

@end

@implementation EntryListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [[self tableView] reloadData];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [[[RLGEntryController sharedInstance] entries] count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"entryCell" forIndexPath:indexPath];
    
    RLGEntry *entry = [[RLGEntryController sharedInstance] entries][[indexPath row]];
    
    cell.textLabel.text = entry.title;
    
    return cell;
}

// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        RLGEntry *entry = [[RLGEntryController sharedInstance] entries][[indexPath row]];
        [[RLGEntryController sharedInstance] removeEntry:entry];
        
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

#pragma mark - Navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"toDetailVC"]) {
        EntryDetailViewController *detailVC = segue.destinationViewController;
        NSIndexPath *index = [self.tableView indexPathForSelectedRow];
        RLGEntry *entryToSend = [[RLGEntryController sharedInstance] entries][index.row];
        detailVC.entry = entryToSend;
    }
}

@end
