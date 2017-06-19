//
//  BPGPlaylist.m
//  Playlist_ObjC
//
//  Created by Bradley GIlmore on 6/19/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

#import "BPGPlaylist.h"

@interface BPGPlaylist()

@property (nonatomic, strong) NSMutableArray *internalSongs;

@end

@implementation BPGPlaylist

- (instancetype)initWithName:(NSString *)name
                       songs:(NSArray *)songs
{
    self = [super init];
    if (self) {
        _name = name;
        _internalSongs = [songs mutableCopy];
    }
    return self;
}

#pragma mark - Create/Delete

- (void) addSongsObject:(BPGSong *)song
{
    [self.internalSongs addObject:song];
}

- (void)removeSongsObject:(BPGSong *)song
{
    [self.internalSongs removeObject:song];
}

- (NSArray *)songs { return self.internalSongs; }


@end
