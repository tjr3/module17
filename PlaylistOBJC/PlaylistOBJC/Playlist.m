//
//  Playlist.m
//  PlaylistOBJC
//
//  Created by Tyler on 5/31/16.
//  Copyright © 2016 Tyler. All rights reserved.
//

#import "Playlist.h"

@implementation Playlist

-(instancetype)initWithName:(NSString *)name songs:(NSMutableArray *)songs
{
    self = [super init];
    if (self) {
        self.name = name;
        self.songs = songs;
    }
    return self;
}



@end
