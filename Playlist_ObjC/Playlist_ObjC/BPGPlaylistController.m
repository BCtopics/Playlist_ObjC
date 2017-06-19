//
//  BPGPlaylistController.m
//  Playlist_ObjC
//
//  Created by Bradley GIlmore on 6/19/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

#import "BPGPlaylistController.h"
#import "BPGPlaylist.h"

@interface BPGPlaylistController()

@property (nonatomic, strong) NSMutableArray *internalPlaylist;

@end

@implementation BPGPlaylistController

+ (BPGPlaylistController *)sharedInstance
{
    static BPGPlaylistController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [BPGPlaylistController new];
    });
    return sharedInstance;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _internalPlaylist = [[NSMutableArray alloc] init]; // Same as new
    }
    return self;
}

- (void)createPlaylistWithTitle:(NSString *)title
{
    BPGPlaylist *playlist = [[BPGPlaylist alloc] initWithName:title songs:[[NSMutableArray alloc] init]];
    [self.internalPlaylist addObject:playlist];
}

- (void)addSongWithTitle:(NSString *)title
               andArtist:(NSString *)artist
              toPlaylist:(BPGPlaylist *)playlist
{
    BPGSong *song = [[BPGSong alloc] initWithTitle:title artist:artist];
    [playlist addSongsObject:song];
}

- (NSArray *)playlists { return self.internalPlaylist; }

@end
