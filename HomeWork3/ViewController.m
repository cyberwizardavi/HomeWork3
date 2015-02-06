//
//  ViewController.m
//  HomeWork3
//  Copyright (c) 2015 Avishek. All rights reserved.
//

#import "ViewController.h"
#import "ToDoList.h"
#import "ToDoItem.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.theTableView.delegate = self;
    self.theTableView.dataSource = self;
    self.theTextBox.delegate =self;
    
    self.addButton.enabled = NO;
    self.removeButton.enabled = NO;
    
    self.todoItems = [[NSMutableArray alloc] init];
    
}

-(id)init{
    self = [super init];
    if(self){
        
    
    
    
    }
    
    return self;
}

-(void)controlTextDidChange:(NSNotification *)obj{
    
    if (self.theTextBox.stringValue.length> 0) {
        self.addButton.enabled = YES;
        
    }
    else{
        self.addButton.enabled = NO;
        self.removeButton.enabled = NO;
    }
    
    if([self.todoItems containsObject:self.theTextBox.stringValue]){
        self.removeButton.enabled = YES;
        
    }
    else
        self.removeButton.enabled = NO;
    
    if (self.checkDuplicate.integerValue == 0) {
        if ([self.todoItems containsObject:self.theTextBox.stringValue]) {
            self.addButton.enabled = NO;
        }
    }
    else
       self.addButton.enabled = YES;
    

    
}



- (IBAction)addButtonClicked:(id)sender {
   
    if(self.checkDuplicate.integerValue == 1){
        [self.todoItems addObject:self.theTextBox.stringValue];
        [self resetAllFields];
    }
    
    else if(![self.todoItems containsObject:self.theTextBox.stringValue]){
        
        
            [self.todoItems addObject:self.theTextBox.stringValue];
            [self resetAllFields];
        
        
    }
    
    
    
    [self.theTableView reloadData];
    
    
    
     NSLog(@"%@",self.todoItems);
    
}



- (IBAction)removeButtonClicked:(id)sender {
    
    if([self.todoItems containsObject:self.theTextBox.stringValue]){
        [self.todoItems removeObject:self.theTextBox.stringValue];
        [self resetAllFields];
        [self.theTableView reloadData];
        NSLog(@"%@",self.todoItems);
        
    }
    
}


- (IBAction)duplicateCheck:(id)sender {
    
       
}

-(NSView *)tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row{
    
    NSTableCellView *cell = [tableView makeViewWithIdentifier:@"Cell" owner:nil];
    
    
    cell.textField.stringValue = [self.todoItems objectAtIndex:row];
    //return [self.todoItems objectAtIndex:row];
    return cell;
    
}


-(NSInteger)numberOfRowsInTableView:(NSTableView *)tableView{
    return [self.todoItems count];
    
}


-(void)resetAllFields{
    self.addButton.enabled = NO;
    self.removeButton.enabled = NO;
    
    [self.theTextBox setStringValue:@""];
    [self.theTextBox display];
    
}

@end
