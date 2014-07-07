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
      NSMutableArray *numberS;
      NSMutableArray *titleS;
      NSMutableArray *descS;

    

}

@property NSMutableArray *nameS ;
@property NSMutableArray *numberS ;
@property NSMutableArray *titleS ;
@property NSMutableArray *descS ;



+ (MySingleton *) sharedInstance;
@end
