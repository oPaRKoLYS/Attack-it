//
//  AtkStartGame.m
//  Attack it！
//
//  Created by Pursue_finky on 13-3-13.
//  Copyright 2013年 __MyCompanyName__. All rights reserved.
//

#import "AtkStartGame.h"


@implementation AtkStartGame
+(CCScene *) scene
{
    CCScene *scene = [CCScene node];
    
    AtkStartGame *layer = [CCLayer node];
    
    [scene addChild:layer];
    
    return scene;
}

-(id)init
{
    if(self = [super init]){
        
    }
    
    return self;
}
@end
