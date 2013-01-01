//
//  JMTile.h
//  JMLiveTiles
//
//  Created by John Myrose on 12/31/12.
//
//

#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>

@interface JMTile : NSObject{
    UIView *tileView;
}

-(id) initWithSuperView: (UIView*)superView andX: (int)x andY: (int)y;

@end
