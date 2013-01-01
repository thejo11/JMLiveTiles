//
//  JMViewController.h
//  JMLiveTiles
//
//

#import <UIKit/UIKit.h>
#import "JMTileGrid.h"

@interface JMMainViewController : UIViewController{
    JMTileGrid* tileGrid;
}

@property (weak, nonatomic) IBOutlet UIBarButtonItem *addTileBtn;

- (IBAction)addTile:(id)sender;

@end
