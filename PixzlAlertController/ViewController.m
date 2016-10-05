//
//  ViewController.m
//  PixzlAlertController
//
//  Created by Pixzl on 13.11.1968.
//  Copyright © 2016 Pixzl. All rights reserved.
//
//  Website: http://www.pixzl.de
//  Twitter: http://www.twitter.com/PixzlDE
//  Facebook: http://www.facebook.com/PIXZL
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

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

- (IBAction)alertViewButtonPressed:(id)sender
{
    [self alertView];
}


- (IBAction)actionSheetButtonPressed:(id)sender
{
    [self actionSheet];
}


- (void)alertView
{
    UIAlertController * alert=   [UIAlertController
                                  alertControllerWithTitle:@"Support"
                                  message:@"Follow us on GitHub!"
                                  preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *follow = [UIAlertAction
                         actionWithTitle:@"Yes"
                         style:UIAlertActionStyleDefault
                         handler:^(UIAlertAction * action)
                         {
                             [alert dismissViewControllerAnimated:YES completion:nil];
                             
                         }];
    UIAlertAction *dismiss = [UIAlertAction
                             actionWithTitle:@"Sure"
                             style:UIAlertActionStyleDefault
                             handler:^(UIAlertAction * action)
                             {
                                 [alert dismissViewControllerAnimated:YES completion:nil];
                                 
                             }];
    
    [alert addAction:follow];
    [alert addAction:dismiss];
    
    [self presentViewController:alert animated:YES completion:nil];
}


-(void)actionSheet
{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Action Sheet"
                                                                   message:@"This is an action sheet."
                                                            preferredStyle:UIAlertControllerStyleActionSheet];
    
    UIAlertAction *firstAction = [UIAlertAction actionWithTitle:@"Okay"
                                                          style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
                                                              NSLog(@"You pressed the okay button");
                                                          }];
    
    [alert addAction:firstAction];

    
    [self presentViewController:alert animated:YES completion:nil];
}

@end
