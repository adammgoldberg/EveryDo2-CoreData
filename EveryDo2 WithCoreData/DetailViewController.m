//
//  DetailViewController.m
//  EveryDo2 WithCoreData
//
//  Created by Adam Goldberg on 2015-10-21.
//  Copyright © 2015 Adam Goldberg. All rights reserved.
//

#import "DetailViewController.h"
#import "ToDo.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
            
        // Update the view.
        [self configureView];
    }
}

- (void)configureView {
    // Update the user interface for the detail item.
    if (self.detailItem) {
        self.detailDescriptionLabel.text = self.detailItem.itemTitle;
        self.toDoDescription.text = self.detailItem.itemDescription;
        self.toDoPriorityDetail.text = [NSString stringWithFormat:@"%ld", self.detailItem.priorityNumber];
        
        
//        cell.toDoPriority.text = [NSString stringWithFormat:@"%ld", aToDo.priorityNumber];
//        
//        
////        [[self.detailItem valueForKey:@"itemTitle"] description];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
