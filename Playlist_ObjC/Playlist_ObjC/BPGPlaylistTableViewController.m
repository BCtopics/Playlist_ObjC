//
//  BPGPlaylistTableViewController.m
//  Playlist_ObjC
//
//  Created by Bradley GIlmore on 6/19/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

#import "BPGPlaylistTableViewController.h"
#import "BPGPlaylistController.h"
#import "BPGSongsTableViewController.m"

@interface BPGPlaylistTableViewController ()

#pragma mark - IBOutlets

@property (weak, nonatomic) IBOutlet UITextField *playlistNameTextField;

@end

@implementation BPGPlaylistTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

#pragma mark - IBActions

- (IBAction)addButtonTapped:(id)sender {
    
    [[BPGPlaylistController sharedInstance] createPlaylistWithTitle:self.playlistNameTextField.text];
    self.playlistNameTextField.text = @"";
    [self.tableView reloadData];
}


#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[[BPGPlaylistController sharedInstance] playlists] count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"playlistCell" forIndexPath:indexPath];
    
    BPGPlaylist *playlist = [[BPGPlaylistController sharedInstance] playlists][indexPath.row];
    
    cell.textLabel.text = playlist.name;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%lu songs", [playlist.songs count]];
    
    return cell;
}


// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    if ([segue.identifier isEqualToString:@"toDetailVC"]) {
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        BPGPlaylist *playlist = [BPGPlaylistController sharedInstance].playlists[indexPath.row];
        BPGSongsTableViewController *vc = (BPGSongsTableViewController *)segue.destinationViewController;
        vc.playlist = playlist;
    }
    
}


@end



