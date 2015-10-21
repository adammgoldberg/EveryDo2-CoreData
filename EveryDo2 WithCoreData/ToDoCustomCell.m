//
//  ToDoCustomCell.m
//  EveryDo2 WithCoreData
//
//  Created by Adam Goldberg on 2015-10-21.
//  Copyright © 2015 Adam Goldberg. All rights reserved.
//

#import "ToDoCustomCell.h"

@implementation ToDoCustomCell

- (void)awakeFromNib {
    // Initialization code
    UISwipeGestureRecognizer *swipeCell = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeAwayToDo:)];
    [self addGestureRecognizer:swipeCell];
    
}

-(void)swipeAwayToDo:(UISwipeGestureRecognizer*)swiped {
    [self.delegate cellSwipedAway:self];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
