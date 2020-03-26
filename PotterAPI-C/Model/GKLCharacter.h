//
//  GKLCharacter.h
//  PotterAPI-C
//
//  Created by Garrett Lyons on 3/26/20.
//  Copyright © 2020 Turtle. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface GKLCharacter : NSObject

@property (nonatomic, copy, readonly) NSString *name;
@property (nonatomic, copy, readonly, nullable) NSString *house;
@property (nonatomic, copy, readonly, nullable) NSString *alias;
@property (nonatomic, copy, readonly, nullable) NSString *patronus;
@property (nonatomic, copy, readonly, nullable) NSString *bogart;

- (instancetype) initWithName:(NSString *)name
                        alias:(NSString *)alias
                     patronus:(NSString *)patronus
                       bogart:(NSString *)bogart;

@end

@interface GKLCharacter (JSONConvertable)

- (instancetype) initWithDictionary: (NSDictionary<NSString *, id> *)dictionary;

@end

NS_ASSUME_NONNULL_END
