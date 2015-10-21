//
//  ToDo+CoreDataProperties.h
//  EveryDo2 WithCoreData
//
//  Created by Adam Goldberg on 2015-10-21.
//  Copyright © 2015 Adam Goldberg. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "ToDo.h"

NS_ASSUME_NONNULL_BEGIN

@interface ToDo (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *itemTitle;
@property (nullable, nonatomic, retain) NSString *itemDescription;
@property (nonatomic, assign) NSInteger priorityNumber;
@property (nonatomic, assign) BOOL completedIndicator;

@end

NS_ASSUME_NONNULL_END
