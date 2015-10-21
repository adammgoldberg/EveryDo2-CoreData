//
//  ModalViewController.h
//  EveryDo2 WithCoreData
//
//  Created by Adam Goldberg on 2015-10-21.
//  Copyright © 2015 Adam Goldberg. All rights reserved.
//

#import <UIKit/UIKit.h>

//@class ToDo;
//
//@protocol ModalDelegate <NSObject>
//
//-(void)addNewToDoItem:(ToDo*)addedItem;
//
//@end


@interface ModalViewController : UIViewController <UITextFieldDelegate>


//@property (nonatomic, weak) id <ModalDelegate> delegate;

@property (strong, nonatomic) IBOutlet UITextField *toDoTitleText;

@property (strong, nonatomic) IBOutlet UITextField *toDoDescriptionText;

@property (strong, nonatomic) IBOutlet UITextField *priorityText;


@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

-(BOOL)textFieldShouldReturn:(UITextField *)textField;


@end
