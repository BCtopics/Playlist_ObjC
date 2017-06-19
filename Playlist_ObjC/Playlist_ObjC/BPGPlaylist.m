//
//  BPGPlaylist.m
//  Playlist_ObjC
//
//  Created by Bradley GIlmore on 6/19/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

#import "BPGPlaylist.h"

@implementation BPGPlaylist

- (instancetype)initWithSong:(BPGSong *)song
                       title:(NSString *)title
{
    self = [super init];
    if (self) {
        _title = title;
        _song = song;
    }
    return self;
}

@end
