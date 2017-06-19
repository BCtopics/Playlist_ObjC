//
//  BPGSong.h
//  Playlist_ObjC
//
//  Created by Bradley GIlmore on 6/19/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BPGSong : NSObject

- (instancetype)initWithTitle:(NSString *)title artist:(NSString *)artist;

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *artist;

@end
