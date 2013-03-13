//
//  OnEnterLayer.m
//  Attack it！
//
//  Created by Pursue_finky on 13-3-13.
//  Copyright 2013年 __MyCompanyName__. All rights reserved.
//

#import "AtkOnEnterLayer.h"
#import "AtkStartGame.h"


@implementation AtkOnEnterLayer
+(CCScene *) scene
{
	CCScene *scene = [CCScene node];
	
	AtkOnEnterLayer *layer = [AtkOnEnterLayer node];
	
	[scene addChild: layer];
	
	return scene;
}

-(void) onEnter
{
	[super onEnter];
    
	CGSize size = [[CCDirector sharedDirector] winSize];
    
	CCSprite *background;
	
	if( UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone ) {
		background = [CCSprite spriteWithFile:@"Default.png"];
	} else {
		background = [CCSprite spriteWithFile:@"Default-Landscape~ipad.png"];
	}
	background.position = ccp(size.width/2, size.height/2);
    
	[self addChild: background];
	
	[self scheduleOnce:@selector(makeTransition:) delay:1];
}

-(void) makeTransition:(ccTime)dt
{
	[[CCDirector sharedDirector] replaceScene:[CCTransitionFade transitionWithDuration:1.0 scene:[AtkStartGame scene] withColor:ccWHITE]];
}

@end
