//
//  AIViewController.m
//  Artificial
//
//  Created by Jon Como on 2/18/13.
//  Copyright (c) 2013 Jon Como. All rights reserved.
//

#import "AIViewController.h"

@interface AIViewController () <UIImagePickerControllerDelegate, UINavigationControllerDelegate>
{
    __weak IBOutlet UIImageView *faceImageView;
}

@end

@implementation AIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)newImage:(id)sender
{
    UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
    [imagePicker setSourceType:UIImagePickerControllerSourceTypeCamera];
    [imagePicker setDelegate:self];
    
    [self presentViewController:imagePicker animated:YES completion:nil];
}

-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    UIImage *chosenImage = info[UIImagePickerControllerOriginalImage];
}

@end
