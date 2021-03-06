//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

-(NSArray *)arrayWithFibonacciSequenceToIndex:(NSUInteger)index{
    
    NSMutableArray *sequence = [[NSMutableArray alloc] init];
    
    for(NSUInteger i = 0; i < index + 1; i++){
        if(i == 0){
            [sequence addObject:@0];
        }
        else if (i == 1){
            [sequence addObject:@1];
        }
        else {
            NSInteger lastNumber = [sequence[i-1] integerValue];
            NSInteger secondToLastNumber = [sequence[i-2] integerValue];
            NSNumber *nextFiboNumber = @(lastNumber+secondToLastNumber);
            [sequence addObject:nextFiboNumber];
        }
    }
    return sequence;
}

@end
