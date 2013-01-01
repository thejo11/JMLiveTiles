//
//  JMTileGrid.h
//  JMLiveTiles
//
//

#import <Foundation/Foundation.h>
#import "JMTile.h"

@interface JMTileGrid : NSObject{
    UIView* tileGridView;
    int columns;
    int rows;
    
    NSMutableArray* fixedTileGrid;
    NSMutableArray* tileList;
}

-(id) initWithView: (UIView*)inputTileView;
-(void) addTile;

@end
