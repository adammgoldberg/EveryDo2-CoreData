//
//  ToDoCustomCell.h
//  EveryDo2 WithCoreData
//
//  Created by Adam Goldberg on 2015-10-21.
//  Copyright © 2015 Adam Goldberg. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ToDoCustomCell;

@protocol ToDoCustomCellDelegate <NSObject>

-(void)cellSwipedAway:(ToDoCustomCell*)theCell;

@end


@interface ToDoCustomCell : UITableViewCell

@property (nonatomic, weak) id <ToDoCustomCellDelegate> delegate;

@property (strong, nonatomic) IBOutlet UILabel *toDoTitle;


@property (strong, nonatomic) IBOutlet UILabel *toDoPreview;


@property (strong, nonatomic) IBOutlet UILabel *toDoPriority;




@end
