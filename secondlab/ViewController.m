//
//  ViewController.m
//  secondlab
//
//  Created by Anita on 2017-02-09.
//  Copyright © 2017 Anita. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

NSTimer *t;

@implementation ViewController
- (IBAction)startTimer:(id)sender {
    t = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(onTick:) userInfo:nil repeats:YES];
}

//Stop Button
- (IBAction)stopTimer:(id)sender {
    if (t) {
        [t invalidate];
        t = nil;
    }
}


-(void)onTick:(NSTimer *)timer {
    _m_cost += 0.01;
    _m_costLabel.text = [NSString stringWithFormat:@"$%.02f", _m_cost];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor blackColor];
    
    _m_cost = 0.00;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
