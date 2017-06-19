//
//  BPGPlaylist.h
//  Playlist_ObjC
//
//  Created by Bradley GIlmore on 6/19/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

#import "BPGSong.h"
#import <Foundation/Foundation.h>

@interface BPGPlaylist : NSObject

- (instancetype)initWithName:(NSString *)name songs:(NSArray *)songs;

@property (nonatomic, copy) NSString *name;
@property (nonatomic, strong, readonly) NSArray *songs;

- (void)addSongsObject:(BPGSong *)song;
- (void)removeSongsObject:(BPGSong *)song;

@end
