//
//  ToDoList.m
//  HomeWork3

//  Copyright (c) 2015 Avishek. All rights reserved.
//

#import "ToDoList.h"
#import "ToDoItem.h"

@implementation ToDoList

-(id)init{
    self.todoItems = [[NSMutableArray alloc] init];
    
    return self;
}

-(void)addItem:(ToDoItem *)item{
    
   [self.todoItems addObject:item];
    
}

-(void)removeItem:(ToDoItem *)item{
    
    if([self.todoItems containsObject:item]){
    [self.todoItems removeObject:item];
    }
}

@end
