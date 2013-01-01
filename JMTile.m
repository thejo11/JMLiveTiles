//
//  JMTile.m
//  JMLiveTiles
//
//  Created by John Myrose on 12/31/12.
//
//

#import "JMTile.h"
#import "JMConstants.h"

@implementation JMTile

-(id) initWithSuperView: (UIView*)superView andX: (int)x andY: (int)y{
    if(self = [super init]){
        CGRect frame = CGRectMake(x, y, columnSize, rowSize);
        tileView = [[UIView alloc] initWithFrame:frame];
        tileView.layer.borderColor = [UIColor lightGrayColor].CGColor;
        tileView.layer.borderWidth = 3.0f;

        CAGradientLayer *gradient = [CAGradientLayer layer];
        gradient.anchorPoint = CGPointMake(0.0f, 0.0f);
        gradient.position = CGPointMake(0.0f, 0.0f);
        gradient.bounds = tileView.layer.bounds;
        gradient.cornerRadius = 10.0;
        gradient.colors = [NSArray arrayWithObjects:
                           (id)[UIColor colorWithRed:0.82f
                                               green:0.32f
                                                blue:0.82f
                                               alpha:1.0].CGColor,
                           (id)[UIColor colorWithRed:0.52f
                                               green:0.02f
                                                blue:0.52f
                                               alpha:1.0].CGColor,
                           nil];
        [tileView.layer addSublayer:gradient];
        
        [superView addSubview:tileView];
    }
    
    return self;
}

@end
