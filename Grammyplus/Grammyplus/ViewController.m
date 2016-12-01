//
//  ViewController.m
//  Grammyplus
//
//  Created by Abdul kareem Khaja mohammed on 11/18/15.
//  Copyright © 2015 Hello World Corporation. All rights reserved.
//

#import "ViewController.h"
#import "NXOAuth2.h"

@interface ViewController ()
//@property (weak, nonatomic) IBOutlet UISegmentedControl *selectPresentation;
@property (weak, nonatomic) IBOutlet UIImageView *imageDisplay;
@property (weak, nonatomic) IBOutlet UIButton *login;

@property (weak, nonatomic) IBOutlet UIButton *logout;
@property (weak, nonatomic) IBOutlet UIButton *refresh;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)loginAction:(id)sender {
    [[NXOAuth2AccountStore sharedStore]requestAccessToAccountWithType:@"Instagram"];
}
- (IBAction)logoutAction:(id)sender {
}

/*- (IBAction)changeImagePresentation:(id)sender {
    if([self.selectPresentation selectedSegmentIndex] == 0) {
        self.imageDisplay.contentMode = UIViewContentModeScaleToFill;
    }
    else if([self.selectPresentation selectedSegmentIndex] == 1) {
        self.imageDisplay.contentMode = UIViewContentModeScaleAspectFit;
    }
    else
        self.imageDisplay.contentMode = UIViewContentModeScaleAspectFill;
}
 */
- (IBAction)refreshAction:(id)sender {
}

@end
