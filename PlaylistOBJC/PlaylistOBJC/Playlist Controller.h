//
//  Playlist Controller.h
//  PlaylistOBJC
//
//  Created by Tyler on 5/31/16.
//  Copyright © 2016 Tyler. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Playlist.h"
#import "Song.h"

@interface Playlist_Controller : NSObject

@property (strong, nonatomic) NSMutableArray *playlists;

-(void)createPlaylistWithTitle: (NSString *)title;
-(void)deletePlaylist:(Playlist *)playlist;
-(void)addSongWithTitle: (NSString *)title andArtist: (NSString *)artist toPlaylist:(Playlist *)playlist;
-(void)deleteSong:(Song *)song fromPlaylist:(Playlist *)playlist;

+(Playlist_Controller *)sharedInstance;
-(instancetype)init;


@end
