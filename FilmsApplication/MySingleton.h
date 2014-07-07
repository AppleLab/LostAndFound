//
//  MySingleton.h
//  FilmsApplication
//
//  Created by itisioslab on 07.07.14.
//  Copyright (c) 2014 itisioslab. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MySingleton : NSObject
{
    
  NSMutableArray *nameS;
    
}

@property NSMutableArray *nameS ;

+ (MySingleton *) sharedInstance;
@end
