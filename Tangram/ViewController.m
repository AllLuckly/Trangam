//
//  ViewController.m
//  Tangram
//
//  Created by 袁灿 on 16/3/7.
//  Copyright © 2016年 yuancan. All rights reserved.
//

#define SCREEN_WIDTH                [[UIScreen mainScreen] bounds].size.width
#define SCREEN_HEIGHT               [[UIScreen mainScreen] bounds].size.height
#define kQtRate                     SCREEN_HEIGHT/SCREEN_WIDTH

#import "ViewController.h"
#import "TangramBaseView.h"
#import "FirstTangramView.h"
#import "SecondTangramView.h"
#import "ThirdTangramView.h"
#import "ForthTangramView.h"
#import "FifthTangramView.h"
#import "SixthTangramView.h"
#import "SeventhTangramView.h"
#import "DetailViewController.h"

@interface ViewController ()
{
    FirstTangramView *firstTangramView;
    SecondTangramView *secondTangramView;
    ThirdTangramView *thirdTangramView;
    ForthTangramView *forthTangramView;
    FifthTangramView *fifthTangramView;
    SixthTangramView *sixthTangramView;
    SeventhTangramView *seventhTangramView;
}

@end

@implementation ViewController

- (void)viewWillAppear:(BOOL)animated
{
    [self.navigationController setNavigationBarHidden:YES];
}

- (void)viewDidDisappear:(BOOL)animated
{
    firstTangramView.frame = CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
    secondTangramView.frame = CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
    thirdTangramView.frame = CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
    forthTangramView.frame = CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
    fifthTangramView.frame = CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
    sixthTangramView.frame = CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
    seventhTangramView.frame = CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
     self.view.backgroundColor = [UIColor whiteColor];

    firstTangramView = [[FirstTangramView alloc] initWithFrame:self.view.bounds];
    secondTangramView = [[SecondTangramView alloc] initWithFrame:self.view.bounds];
    thirdTangramView = [[ThirdTangramView alloc] initWithFrame:self.view.bounds];
    forthTangramView = [[ForthTangramView alloc] initWithFrame:self.view.bounds];
    fifthTangramView = [[FifthTangramView alloc] initWithFrame:self.view.bounds];
    sixthTangramView = [[SixthTangramView alloc] initWithFrame:self.view.bounds];
    seventhTangramView = [[SeventhTangramView alloc] initWithFrame:self.view.bounds];
    
    [self.view addSubview:firstTangramView];
    [self.view addSubview:secondTangramView];
    [self.view addSubview:thirdTangramView];
    [self.view addSubview:forthTangramView];
    [self.view addSubview:fifthTangramView];
    [self.view addSubview:sixthTangramView];
    [self.view addSubview:seventhTangramView];
    
    [self linearIn];


    __block ViewController *blockSelf = self;
    
    firstTangramView.isClicked = ^ (id result){
        [blockSelf linearOutIndex:1 withView:result];
    };
    
    secondTangramView.isClicked = ^ (id result){
        [blockSelf linearOutIndex:2 withView:result];
    };
    
    thirdTangramView.isClicked = ^(id result){
        [blockSelf linearOutIndex:3 withView:result];
    };
    
    forthTangramView.isClicked = ^(id result){
        [blockSelf linearOutIndex:4 withView:result];
    };
    
    fifthTangramView.isClicked = ^(id result){
        [blockSelf linearOutIndex:5 withView:result];
    };
    
    sixthTangramView.isClicked = ^(id result){
        [blockSelf linearOutIndex:6 withView:result];
    };
    
    seventhTangramView.isClicked = ^(id result){
        [blockSelf linearOutIndex:7 withView:result];
    };
}

- (void)linearIn
{
    firstTangramView.frame = CGRectMake(-SCREEN_WIDTH, -SCREEN_HEIGHT, SCREEN_WIDTH, SCREEN_HEIGHT);
    secondTangramView.frame = CGRectMake(0, -SCREEN_HEIGHT, SCREEN_WIDTH, SCREEN_HEIGHT);
    thirdTangramView.frame = CGRectMake(-2*SCREEN_WIDTH, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
    forthTangramView.frame = CGRectMake(-SCREEN_WIDTH, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
    fifthTangramView.frame = CGRectMake(SCREEN_WIDTH, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
    sixthTangramView.frame = CGRectMake(SCREEN_WIDTH, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
    seventhTangramView.frame = CGRectMake(0, SCREEN_HEIGHT, SCREEN_WIDTH, SCREEN_HEIGHT);
    
    [UIView animateWithDuration:3.0f
                     animations:^{
                         firstTangramView.frame = CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
                         secondTangramView.frame = CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
                         thirdTangramView.frame = CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
                         forthTangramView.frame = CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
                         fifthTangramView.frame = CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
                         sixthTangramView.frame = CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
                         seventhTangramView.frame = CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
                     }];
    
}

- (void)linearOutIndex:(NSInteger)index withView:(UIView *)view
{
    self.view.backgroundColor = view.backgroundColor;
    
    [UIView animateWithDuration:1.0f
                     animations:^{

                         if (index != 1) {
                             firstTangramView.frame = CGRectMake(-SCREEN_WIDTH, -SCREEN_HEIGHT, SCREEN_WIDTH, SCREEN_HEIGHT);
                         }
                         
                         if (index != 2) {
                              secondTangramView.frame = CGRectMake(0, -SCREEN_HEIGHT, SCREEN_WIDTH, SCREEN_HEIGHT);
                         }
                         
                         if (index != 3) {
                             thirdTangramView.frame = CGRectMake(-2*SCREEN_WIDTH, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
                         }
                         
                         if (index != 4) {
                             forthTangramView.frame = CGRectMake(-SCREEN_WIDTH, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
                         }
                         
                         if (index != 5) {
                             fifthTangramView.frame = CGRectMake(SCREEN_WIDTH, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
                         }
                        
                         if (index != 6) {
                             sixthTangramView.frame = CGRectMake(SCREEN_WIDTH, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
                         }
                         
                         if (index != 7) {
                             seventhTangramView.frame = CGRectMake(0, SCREEN_HEIGHT, SCREEN_WIDTH, SCREEN_HEIGHT);
                         }
                     }
                     completion:^(BOOL finished) {
                         
                         DetailViewController *detailVC = [[DetailViewController alloc] init];
                         detailVC.backgroundColor = view.backgroundColor;
                         detailVC.title = [NSString stringWithFormat:@"七巧板%ld",(long)index];
                         [self.navigationController pushViewController:detailVC animated:YES];
                     }];

}

@end
