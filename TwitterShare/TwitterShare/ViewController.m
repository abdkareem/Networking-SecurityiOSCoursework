//
//  ViewController.m
//  TwitterShare
//
//  Created by Abdul kareem Khaja mohammed on 11/8/15.
//  Copyright © 2015 Hello World Corporation. All rights reserved.
//

#import "ViewController.h"
#import "Social/Social.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *textField;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *updateButton;

- (void)modifyTextField;
-(void)throwError:(NSString*)errorMessage;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self modifyTextField];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*-(void)throwError:(NSString*)errorMessage {
    UIAlertController * twitterError = [UIAlertController alertControllerWithTitle:@"Sign in" message:errorMessage preferredStyle:UIAlertActionStyleDefault];
    UIAlertAction * cancelAlert = [UIAlertAction actionWithTitle:@"Okay" style:UIAlertActionStyleDefault handler:nil];
    [twitterError addAction:cancelAlert];
    [twitterError addAction:[UIAlertAction actionWithTitle:@"Dismiss" style:UIAlertActionStyleDefault handler:nil]];
    [self presentViewController:twitterError animated:YES completion:nil];
} */

- (IBAction)updateAction:(id)sender {
    if ([self.textField isFirstResponder]) {
        [self.textField resignFirstResponder];
    }
    /*UIAlertController * action = [UIAlertController alertControllerWithTitle:@"Share" message:@"" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction * cancel = [UIAlertAction actionWithTitle:@"cancel" style:UIAlertActionStyleDefault handler:nil];
    UIAlertAction * tweet = [UIAlertAction actionWithTitle:@"tweet" style:UIAlertActionStyleDefault handler:^(UIAlertAction * test){
        if([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter]) {
            SLComposeViewController * twitterVC = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
            [self presentViewController:twitterVC animated:YES completion:nil];
            
            if ([self.textField.text length] < 140) {
                [twitterVC setInitialText:self.textField.text];
            }
            else {
                NSString * shortString = [self.textField.text substringToIndex:140];
                [twitterVC setInitialText:shortString];
            }
        }
        else
        {
            [self throwError:@"Please sign into twitter before you start tweeting"];
            
        }
    }];
    UIAlertAction *postFacebook = [UIAlertAction actionWithTitle:@"post on facebook" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
        if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook]) {
            SLComposeViewController * facebookVC = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
            [facebookVC setInitialText:self.textField.text];
            [self presentViewController:facebookVC animated:YES completion:nil];
        }
        
    }]; */
    NSArray * content = [NSArray arrayWithObjects:self.textField.text , nil];
    //UIAlertAction * futureProof = [UIAlertAction actionWithTitle:@"Future proof" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
        UIActivityViewController * moreVC = [[UIActivityViewController alloc] initWithActivityItems:content applicationActivities:nil];
        [self presentViewController:moreVC animated:YES completion:nil];
        
        
    //}];
    
    //[action addAction:cancel];
    //[action addAction:tweet];
    //[action addAction:postFacebook];
    //[action addAction:futureProof];
    
    //[self presentViewController:action animated:YES completion:nil];
}

- (void)modifyTextField {
    self.textField.layer.backgroundColor = [UIColor colorWithRed:1.0 green:1.0 blue:0.9 alpha:1.0].CGColor;
    self.textField.layer.cornerRadius = 10.0;
    self.textField.layer.borderColor = [UIColor colorWithWhite:0 alpha:0.5].CGColor;
    self.textField.layer.borderWidth = 1.5;
    
}
@end
