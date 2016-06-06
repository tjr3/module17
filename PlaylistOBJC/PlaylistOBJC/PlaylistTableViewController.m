//
//  PlaylistTableViewController.m
//  PlaylistOBJC
//
//  Created by Tyler on 5/31/16.
//  Copyright © 2016 Tyler. All rights reserved.
//

#import "PlaylistTableViewController.h"
#import "Playlist Controller.h"
#import "SongTableViewController.h"

@interface PlaylistTableViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

@end

@implementation PlaylistTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

#pragma mark - Action Buttons

- (IBAction)addButtonTapped:(id)sender
{
    
}


#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[Playlist_Controller sharedInstance].playlists count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"playlistCell" forIndexPath:indexPath];
    Playlist *playlist = [Playlist_Controller sharedInstance].playlists[indexPath.row];
    cell.textLabel.text = playlist.name;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%lu songs", [playlist.songs count]];
    return cell;
}



// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        Playlist *playlist = [Playlist_Controller sharedInstance].playlists [indexPath.row];
        [[Playlist_Controller sharedInstance] deletePlaylist: playlist];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}



#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"toSongsSegue"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        Playlist *playlist = [Playlist_Controller sharedInstance].playlists[indexPath.row];
        SongTableViewController *songTVC = (SongTableViewController *)[segue destinationViewController];
        songTVC.playlist = playlist;
    }
    
}


@end
