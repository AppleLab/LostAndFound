//
//  MySingleton.m
//  FilmsApplication
//
//  Created by itisioslab on 07.07.14.
//  Copyright (c) 2014 itisioslab. All rights reserved.
//

#import "MySingleton.h"
static MySingleton *_sharedInstance ;

@implementation MySingleton

@synthesize nameS ;

- (id) init {
    self = [super init ] ;
    nameS = [[NSMutableArray alloc]init] ;
    return self ;
    

}


+ (MySingleton *) sharedInstance
{
    @synchronized(_sharedInstance)
    {
        if (!_sharedInstance)
            _sharedInstance = [[MySingleton alloc]init] ;
        return _sharedInstance;
        
        
    }
    
    }

/*+ (id) allocWithZone:(NSZone *)zone
{
    return [[self sharedInstance] retain];
}

- (id) copyWithZone:(NSZone*)zone
{
    return self;
} */
@end
