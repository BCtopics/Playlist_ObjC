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

- (instancetype)initWithSong:(BPGSong *)song title:(NSString *)title;

@property (nonatomic, copy) NSString *title;
@property (nonatomic) BPGSong *song;

@end
