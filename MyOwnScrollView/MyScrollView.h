//
//  MyScrollView.h
//  MyOwnScrollView
//
//  Created by Arsalan Vakili on 2015-08-17.
//  Copyright (c) 2015 Arsalan Vakili. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyScrollView : UIView

@property(nonatomic,assign) CGSize contentSize;

@property(nonatomic,strong) NSMutableArray *scrollViewarray;
@property(nonatomic,strong) UIPanGestureRecognizer *panGesture;


-(CGSize)contentSize:(NSMutableArray *)array;

- (instancetype)initWithFrame:(CGRect)frame;


-(void)handlePanGesture:(UIPanGestureRecognizer *)gestureRecognizer;

@end
