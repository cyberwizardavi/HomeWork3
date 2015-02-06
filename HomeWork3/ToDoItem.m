//
//  ToDoItem.m
//  HomeWork3

//  Copyright (c) 2015 Avishek. All rights reserved.
//

#import "ToDoItem.h"

@implementation ToDoItem

+(instancetype)ToDoItem:(NSString*)name
{
    ToDoItem *object = [[self alloc] init];
    object.name = name;
    return object;
}

@end
