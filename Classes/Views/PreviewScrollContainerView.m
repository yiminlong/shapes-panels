//
//  PreviewScrollContainerView.m
//  shapes
//
//  Created by Nate Murray on 8/23/10.
//  Copyright 2010 LittleHiccup. All rights reserved.
//

#import "PreviewScrollContainerView.h"


@implementation PreviewScrollContainerView
@synthesize scrollView;

/*
-(id) init {
    if ((self = [super init])){ 
        }
    return self;
}
*/


- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    if ([self pointInside:point withEvent:event]) {
        return self.scrollView;
    }
    return nil;
}

-(void) dealloc {
    self.scrollView = nil;
	[super dealloc];
}

@end