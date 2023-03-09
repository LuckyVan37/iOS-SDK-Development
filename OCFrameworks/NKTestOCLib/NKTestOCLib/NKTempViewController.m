//
//  NKTempViewController.m
//  NKTestOCLib
//
//  Created by Van Zhang on 2023/3/9.
//

#import "NKTempViewController.h"
#import "NKRedView.h"

@interface NKTempViewController ()
//Desc:
@property (weak, nonatomic) NKRedView *redView;
@end

@implementation NKTempViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    if (!self.redView){
        self.redView = [NKRedView shared];
        [self.view addSubview:self.redView];
    } else {
        [self.redView removeFromSuperview];
    }
    
}
- (IBAction)click:(UIButton*)sender {
    UIAlertController *alertCtrl;
    UIAlertAction *destroyAction;
    UIAlertAction *otherAction;
    void (^CallDestroyActionHandler)(UIAlertAction *action) = ^(UIAlertAction *action) {
        // do destructive stuff here
        NSLog(@"%s",__func__);
    };
    void (^CallOtherActionHandler)(UIAlertAction *action) = ^(UIAlertAction *action) {
        // do something here
        NSLog(@"%s",__func__);
    };
    alertCtrl = [UIAlertController alertControllerWithTitle:@"Reason"
                                                    message:@"Select the following"
                                             preferredStyle:UIAlertControllerStyleActionSheet];
    destroyAction = [UIAlertAction actionWithTitle:@"Remove All Data"
                                             style:UIAlertActionStyleDestructive
                                           handler:CallDestroyActionHandler];
    otherAction = [UIAlertAction actionWithTitle:@"Blah"
                                           style:UIAlertActionStyleDefault
                                         handler:CallOtherActionHandler];
    // note: you can control the order buttons are shown, unlike UIActionSheet
    [alertCtrl addAction:destroyAction];
    [alertCtrl addAction:otherAction];
    
    [alertCtrl setModalPresentationStyle:UIModalPresentationPopover];
    UIPopoverPresentationController *popPresenter = [alertCtrl popoverPresentationController];
    popPresenter.sourceView = sender;
    popPresenter.sourceRect = sender.bounds;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
