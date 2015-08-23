//
//  ViewController.m
//  MyOwnScrollView
//
//  Created by Arsalan Vakili on 2015-08-17.
//  Copyright (c) 2015 Arsalan Vakili. All rights reserved.
//

#import "ViewController.h"
#import "MyScrollView.h"

@interface ViewController ()

@property(nonatomic,strong) UIScrollView *scrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    MyScrollView *scrollView = [[MyScrollView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height )];
    
  
    
    // creating a redview
    UIView *redView = [[UIView alloc]initWithFrame:CGRectMake(20, 20, 100, 100)];
    redView.backgroundColor = [UIColor redColor];
    [scrollView.scrollViewarray addObject:redView];
    
    // creating a green View
    UIView *greenView = [[UIView alloc]initWithFrame:CGRectMake(150, 150, 150, 200)];
    greenView.backgroundColor = [UIColor greenColor];
    [scrollView.scrollViewarray addObject:greenView];
    
    // creating a blue View
    UIView *blueView = [[UIView alloc]initWithFrame:CGRectMake(40, 400, 200, 150)];
    blueView.backgroundColor = [UIColor blueColor];
    [scrollView.scrollViewarray addObject:blueView];
    
    // creating a yello view
    UIView *yellowView = [[UIView alloc]initWithFrame:CGRectMake(100, 600, 180, 150)];
    yellowView.backgroundColor = [UIColor yellowColor];
    [scrollView.scrollViewarray addObject:yellowView];
    
    scrollView.contentSize = [scrollView contentSize:scrollView.scrollViewarray];
    
    [self.view addSubview:scrollView];
    
  
    [scrollView addGestureRecognizer:scrollView.panGesture];
    
    
   
    [scrollView addSubview:redView];
    [scrollView addSubview:greenView];
    [scrollView addSubview:blueView];
    [scrollView addSubview:yellowView];
    
    
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
