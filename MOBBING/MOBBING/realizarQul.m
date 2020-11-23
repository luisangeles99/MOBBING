//
//  realizarQul.m
//  MOBBING
//
//  Created by Luis Alberto Angeles Morales on 15/11/20.
//  Copyright © 2020 Luis Alberto Angeles Morales. All rights reserved.
//

#import "realizarQul.h"
#import "QULQuestionnaireViewController.h"
#import "MOBBING-Swift.h"

@interface realizarQul ()

@end



@implementation realizarQul

QULQuestionnaireViewController *controller;
bool listo = false;

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
    controller = [[QULQuestionnaireViewController alloc] initWithQuestionnaireData:questionnaireData];
    
    controller.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:controller animated:YES completion:NULL];
    
}

/*
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    cuestionarioViewController *view = [segue destinationViewController];
    
    view.respuestas = controller.results;
    view.listo = true;
    
    printf("Ready for segue");
    
}
 */

- (void)viewWillAppear:(BOOL)animated {

    if (controller.isBeingDismissed){
        listo = true;
        printf("Dismissing questions");
    }
    
    if (listo) {
        listo = false;
        printf("Listo\n");
        self.respuestas = controller.results;
        for(NSString *key in [_respuestas allKeys]) {
            NSLog(@"%@", _respuestas[key]);
        }
        [self performSegueWithIdentifier:@"showResults" sender:self];
    }else {
        printf("Sin respuestas");
    }
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    mostrarResultadosViewController *view = [segue destinationViewController];
    view.respuestas = self.respuestas;
}




@end


