//
//  BPGSong.m
//  Playlist_ObjC
//
//  Created by Bradley GIlmore on 6/19/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

#import "BPGSong.h"

@implementation BPGSong

- (instancetype)initWithTitle:(NSString *)title
                       artist:(NSString *)artist
{
    self = [super init];
    if (self) {
        _title = title;
        _artist = artist;
    }
    return self;
}

@end
