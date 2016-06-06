//
//  Playlist Controller.m
//  PlaylistOBJC
//
//  Created by Tyler on 5/31/16.
//  Copyright © 2016 Tyler. All rights reserved.
//

#import "Playlist Controller.h"

@implementation Playlist_Controller

-(instancetype)init
{
    self = [super init];
    if (self) {
        self.playlists = [[NSMutableArray alloc] init];
    
}
    return self;
}


+ (Playlist_Controller *)sharedInstance {
    static Playlist_Controller *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^ {
        sharedInstance = [Playlist_Controller new];
    });
    return sharedInstance;
}

#pragma mark - Method Signatures

-(void)createPlaylistWithTitle:(NSString *)title
{
    Playlist *playlist = [[Playlist alloc] initWithName:title songs: [[NSMutableArray alloc]init]];
    [self.playlists addObject:playlist];
}


-(void)deletePlaylist:(Playlist *)playlist
{
    [self.playlists removeObject:playlist];
}


-(void)addSongWithTitle:(NSString *)title andArtist:(NSString *)artist toPlaylist:(Playlist *)playlist
{
    Song *song = [[Song alloc] initWithTitle:title artist:artist];
    [playlist.songs addObject:song];
}


-(void)deleteSong:(Song *)song fromPlaylist:(Playlist *)playlist
{
    [playlist.songs removeObject:song];
}



@end
