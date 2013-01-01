//
//  JMViewController.m
//  JMLiveTiles
//
//

#import "JMMainViewController.h"

@interface JMMainViewController ()

@end

@implementation JMMainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    tileGrid = [[JMTileGrid alloc] initWithView:self.view];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addTile:(id)sender {
    [tileGrid addTile];
}
@end
