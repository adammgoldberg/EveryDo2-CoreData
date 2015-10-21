//
//  ToDo.h
//  EveryDo2 WithCoreData
//
//  Created by Adam Goldberg on 2015-10-21.
//  Copyright © 2015 Adam Goldberg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

NS_ASSUME_NONNULL_BEGIN

@interface ToDo : NSManagedObject

// Insert code here to declare functionality of your managed object subclass

//- (instancetype)initWithTitle:(NSString*)title description:(NSString*)description priority:(NSInteger)priority inMOC:(NSManagedObjectContext*)moc;


@end

NS_ASSUME_NONNULL_END

#import "ToDo+CoreDataProperties.h"
