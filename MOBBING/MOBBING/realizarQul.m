//
//  realizarQul.m
//  MOBBING
//
//  Created by Luis Alberto Angeles Morales on 15/11/20.
//  Copyright © 2020 Luis Alberto Angeles Morales. All rights reserved.
//

#import "realizarQul.h"
#import "QULQuestionnaireViewController.h"

@interface realizarQul ()

@end



@implementation realizarQul

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self showQuestionnaireWithData:self.arr];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)showQuestionnaireWithData:(NSArray *)questionnaireData {
    QULQuestionnaireViewController *controller = [[QULQuestionnaireViewController alloc] initWithQuestionnaireData:questionnaireData];
    
    [self presentViewController:controller animated:YES completion:NULL];
}


@end


