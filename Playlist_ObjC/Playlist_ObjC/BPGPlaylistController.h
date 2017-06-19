//
//  BPGPlaylistController.h
//  Playlist_ObjC
//
//  Created by Bradley GIlmore on 6/19/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BPGPlaylist.h"

@interface BPGPlaylistController : NSObject

@property (nonatomic, strong, readonly) NSArray *playlists;

+ (BPGPlaylistController *)sharedInstance;
- (instancetype)init;

- (void)createPlaylistWithTitle:(NSString *)title;
- (void)addSongWithTitle:(NSString *)title
               andArtist:(NSString *)artist
              toPlaylist:(BPGPlaylist *)playlist;
// deleteSong;
// deletePlaylist;

@end
