//
//  ViewController.m
//  Gallery04
//
//  Created by SDT-1 on 2014. 1. 2..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIImageView *imgv2;

@end

@implementation ViewController
{
	UIImage *img[5];
	int c;
	UIImageView *imgv1;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
- (void)viewDidAppear:(BOOL)animated {
	[super viewDidAppear:animated];
	c = 0;
	
	NSString *path = [[NSBundle mainBundle] bundlePath];
	NSString *fileName = [NSString stringWithFormat:@"%@/002.jpg",path];
	img[0] = [UIImage imageWithContentsOfFile:fileName];
	fileName = [NSString stringWithFormat:@"%@/ball1.png",path];
	img[1] = [UIImage imageWithContentsOfFile:fileName];
	fileName = [NSString stringWithFormat:@"%@/ball2.png",path];
	img[2] = [UIImage imageWithContentsOfFile:fileName];
	fileName = [NSString stringWithFormat:@"%@/ball3.png",path];
	img[3] = [UIImage imageWithContentsOfFile:fileName];
	fileName = [NSString stringWithFormat:@"%@/sky.jpg",path];
	img[4] = [UIImage imageWithContentsOfFile:fileName];
	
	_imgv2 = [[UIImageView alloc] initWithImage:img[0]];
	
	
	
	
	[self.view insertSubview:_imgv2 atIndex:0];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)leftButton:(id)sender {
	if(c!=0) {
		c--;
		_imgv2.image = img[c];
	}
}
- (IBAction)rightButton:(id)sender {
	if(c!=4) {
		c++;
		_imgv2.image = img[c];
	}
}

@end


















