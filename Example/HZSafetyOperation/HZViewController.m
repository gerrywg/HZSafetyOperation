//
//  HZViewController.m
//  HZSafetyOperation
//
//  Created by gerrywg on 10/24/2018.
//  Copyright (c) 2018 gerrywg. All rights reserved.
//

#import "HZViewController.h"

@interface HZViewController ()

@end

@implementation HZViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSMutableArray *arr1 = [NSMutableArray array];
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        for (int i = 0; i<10000; i++) {
            //[array addObject:@(i)];
            //NSLog(@"%@",[array fetchArray].lastObject);
            
//            [arr1 safeUpdateBlock:^{
//                [arr1 addObject:@(i)];
//            }];
//
//            [arr1 safeReadBlock:^{
//                NSLog(@"%@",arr1.lastObject);
//            }];
        }
        
    });
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        for (int i = 0; i<10000; i++) {
            //[array addObject:[NSString stringWithFormat:@"A--%@",@(i)]];
            //NSLog(@"%@",[array fetchArray].lastObject);
//            [arr1 safeUpdateBlock:^{
//                [arr1 addObject:[NSString stringWithFormat:@"A--%@",@(i)]];
//            }];
//
//            [arr1 safeReadBlock:^{
//                NSLog(@"--%@",arr1.lastObject);
//            }];
            
        }
        
    });
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
