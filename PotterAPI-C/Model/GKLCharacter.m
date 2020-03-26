//
//  GKLCharacter.m
//  PotterAPI-C
//
//  Created by Garrett Lyons on 3/26/20.
//  Copyright © 2020 Turtle. All rights reserved.
//

#import "GKLCharacter.h"

@implementation GKLCharacter

- (instancetype)initWithName:(NSString *)name house:(NSString *)house alias:(NSString *)alias patronus:(NSString *)patronus bogart:(NSString *)bogart
{
    self = [super init];
    
    if (self)
    {
        _name = name;
        _house = house;
        _alias = alias;
        _patronus = patronus;
        _bogart = bogart;
    }
    return self;
}

- (instancetype)initWithDictionary:(NSDictionary<NSString *,id> *)dictionary;
{
    NSString *name = dictionary[@"name"];
    NSString *house = dictionary[@"house"];
    NSString *alias = dictionary[@"alias"];
    NSString *patronus = dictionary[@"patronus"];
    NSString *bogart = dictionary[@"bogart"];
    
    return [self initWithName:name house:house alias:alias patronus:patronus bogart:bogart];
}

@end
