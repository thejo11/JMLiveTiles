//
//  JMTileGrid.m
//  JMLiveTiles
//
//

#import "JMTileGrid.h"
#import "JMConstants.h"

@implementation JMTileGrid

int numberOfColumns;
int numberOfRows;
float columnSize;
float rowSize;

-(id) initWithView: (UIView*)inputTileView{
    if(self = [super init]){
        tileGridView = inputTileView;
        
        if([[[UIDevice currentDevice] model] hasPrefix:@"iPad"]){
            numberOfColumns = iPadNumCols;
            numberOfRows = iPadNumRows;
        }else{
            numberOfColumns = iPhoneNumCols;
            numberOfRows = iPhoneNumRows;
        }
        
        fixedTileGrid = [[NSMutableArray alloc] initWithCapacity:(numberOfColumns*numberOfRows)];
        for(int i = 0; i < numberOfColumns*numberOfRows; i++){
            [fixedTileGrid insertObject:[NSNumber numberWithInt:-1] atIndex:i];
        }
        
        CGSize screenSize = tileGridView.bounds.size;
        CGFloat screenWidth = screenSize.width-10;
        CGFloat screenHeight = screenSize.height-44; //Height of nav bar is 44 pixels
        
        NSLog(@"screenWidth: %f, screenHeight: %f", screenWidth, screenHeight);
        
        columnSize = screenWidth/numberOfColumns;
        rowSize = screenHeight/numberOfRows;
        
        NSLog(@"colSize: %f, rowSize: %f", columnSize, rowSize);
    }
    
    return self;
}

-(void) addTile{
    
    int insertPoint = -1;
    for(int i = 0; i < [fixedTileGrid count]; i++){
        if([fixedTileGrid objectAtIndex:i] == [NSNumber numberWithInt:-1]){
            insertPoint = i;
            break;
        }
    }
    
    NSLog(@"insertPoint: %i", insertPoint);
    
    if(insertPoint != -1){
        int xValue = ceil((insertPoint%numberOfColumns)*columnSize+5);
        int yValue = ceil((insertPoint/numberOfColumns)*columnSize+1);
        NSLog(@"xValue: %i, yValue: %i", xValue, yValue);
        JMTile* newTile = [[JMTile alloc] initWithSuperView:tileGridView andX:xValue andY:yValue];
        
        [tileList addObject:newTile];
        [fixedTileGrid replaceObjectAtIndex:insertPoint withObject:[NSNumber numberWithInteger: [tileList count]]];
    }
}

@end
