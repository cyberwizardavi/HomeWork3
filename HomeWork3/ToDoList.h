//
//  ToDoList.h
//  HomeWork3

//  Copyright (c) 2015 Avishek. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ToDoItem.h"

@interface ToDoList : NSObject
@property (strong, nonatomic) NSMutableArray *todoItems;

-(void)addItem:(ToDoItem *)item;
-(void)removeItem:(ToDoItem *)item;

@end
