//
//  MyScrollView.m
//  MyOwnScrollView
//
//  Created by Arsalan Vakili on 2015-08-17.
//  Copyright (c) 2015 Arsalan Vakili. All rights reserved.
//

#import "MyScrollView.h"

@implementation MyScrollView
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
      
        _scrollViewarray = [[NSMutableArray alloc]init];
//        _panGesture = [[UIPanGestureRecognizer alloc]
//                                 initWithTarget:self action:@selector(handlePanGesture:)];
     
    }
    return self;
}


-(CGSize)contentSize:(NSMutableArray *)array {
    self.contentSize = CGSizeMake(0, 0);
    CGSize size = self.contentSize;
    for (UIView *view in array) {
        int totalHeight = view.frame.origin.y + self.frame.size.height;
        if (totalHeight >= self.contentSize.height) {
            size.height = totalHeight;
            
        }
        int totalWidth = view.frame.origin.x + self.frame.size.width;
        if (totalWidth >= self.contentSize.width) {
           size.width = totalWidth;
            
        }
    }
    return self.contentSize;
}

-(void)handlePanGesture:(UIPanGestureRecognizer *)gestureRecognizer
{
    CGPoint translation = [gestureRecognizer translationInView:self];
    CGRect bounds = self.bounds;
    
    // Translate the view's bounds, but do not permit values that would violate contentSize
    CGFloat newBoundsOriginX = bounds.origin.x - translation.x;
    CGFloat minBoundsOriginX = 0.0;
    CGFloat maxBoundsOriginX = self.contentSize.width - bounds.size.width;
    bounds.origin.x = fmax(minBoundsOriginX, fmin(newBoundsOriginX, maxBoundsOriginX));
    
    CGFloat newBoundsOriginY = bounds.origin.y - translation.y;
    CGFloat minBoundsOriginY = 0.0;
    CGFloat maxBoundsOriginY = self.contentSize.height - bounds.size.height;
    bounds.origin.y = fmax(minBoundsOriginY, fmin(newBoundsOriginY, maxBoundsOriginY));
    
    self.bounds = bounds;
    [gestureRecognizer setTranslation:CGPointZero inView:self];
}

@end
