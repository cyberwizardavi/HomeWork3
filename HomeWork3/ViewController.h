//
//  ViewController.h
//  HomeWork3

//  Copyright (c) 2015 Avishek. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController <NSTableViewDataSource, NSTableViewDelegate,NSTextFieldDelegate>

@property (weak) IBOutlet NSTextField *theTextBox;
@property (weak) IBOutlet NSButton *addButton;
@property (weak) IBOutlet NSButton *removeButton;
@property (weak) IBOutlet NSButton *checkDuplicate;
@property (weak) IBOutlet NSTableView *theTableView;
@property (strong, nonatomic) NSMutableArray *todoItems;

@end

