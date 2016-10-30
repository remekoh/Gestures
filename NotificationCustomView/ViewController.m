//
//  ViewController.m
//  NotificationCustomView
//
//  Created by rem{e}koh on 10/10/16.
//  Copyright © 2016 rem{e}koh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    notificationView = [[NotificationView alloc]initWithFrame:CGRectMake(0,0, self.view.frame.size.width, self.view.frame.size.height)];
    
    notificationView.backgroundColor = [UIColor darkGrayColor];
    
    [self.view addSubview:notificationView];
    
    // SwipeDown Gesture setup
    UISwipeGestureRecognizer *swipeDown = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeDown:)];
    
    swipeDown.direction = UISwipeGestureRecognizerDirectionDown;
    
    [self.view addGestureRecognizer:swipeDown];
    
    // SwipeDown Gesture setup
    UISwipeGestureRecognizer *swipeUp = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeUp:)];
    
    swipeUp.direction = UISwipeGestureRecognizerDirectionUp;
    
    [self.view addGestureRecognizer:swipeUp];
    
}

-(void) swipeDown:(UIGestureRecognizer *) recognizer {
    
    [UIView animateWithDuration:1.0 animations:^{notificationView.center = self.view.center;}];
}

- (void) swipeUp:(UIGestureRecognizer * )recognizer {

    [UIView animateWithDuration: 1.0 animations:^{
        
        notificationView.frame = CGRectMake(0,-self.view.frame.size.height, self.view.frame.size.width,self.view.frame.size.height);
        
    }];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
