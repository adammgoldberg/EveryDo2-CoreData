//
//  ModalViewController.m
//  EveryDo2 WithCoreData
//
//  Created by Adam Goldberg on 2015-10-21.
//  Copyright © 2015 Adam Goldberg. All rights reserved.
//

#import "ModalViewController.h"
#import "ToDo.h"
#import "AppDelegate.h"


@interface ModalViewController ()




@end

@implementation ModalViewController





- (IBAction)addToDo:(id)sender {
//    ToDo *newToDo = [[ToDo alloc] initWithTitle:self.toDoTitleText.text description:self.toDoDescriptionText.text priority:[self.priorityText.text integerValue] inMOC:self.managedObjectContext];
    
    ToDo *newTodo = [NSEntityDescription insertNewObjectForEntityForName:@"ToDo" inManagedObjectContext:self.managedObjectContext];
    
    newTodo.itemTitle = self.toDoTitleText.text;
    newTodo.itemDescription = self.toDoDescriptionText.text;
    newTodo.priorityNumber = [self.priorityText.text integerValue];
    
    NSError *error = nil;
    if (![self.managedObjectContext save:&error]) {
        NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
        abort();
    }
    
    
//    [self.delegate addNewToDoItem:newToDo];
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (IBAction)cancelAdd:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.toDoTitleText.delegate = self;
    self.toDoDescriptionText.delegate = self;
    self.priorityText.delegate = self;
    
//    AppDelegate *modAppd = [UIApplication sharedApplication].delegate;
//    self.managedObjectContext = modAppd.managedObjectContext;
//    
//    [modAppd saveContext];

    
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    return YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
