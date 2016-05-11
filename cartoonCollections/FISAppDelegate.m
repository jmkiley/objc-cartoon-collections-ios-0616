//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

/**
 
 *  Define your method implementations here.
 
 */
- (NSString *)stringByRollCallingDwarfsInArray:(NSArray *)dwarfs {
    NSMutableString *rollCall = [ @"" mutableCopy ] ;
    for (NSUInteger i = 0; i < [ dwarfs count ]; i++) {
        NSString *dwarf = dwarfs[i] ;
        NSUInteger spot = i + 1 ;
        if ( spot == 1 ) {
            [ rollCall appendFormat:@"%lu. %@", spot, dwarf ];
        }
        else {
        [ rollCall appendFormat:@" | %lu. %@", spot, dwarf ];
        }
    }
    NSLog(@"%@", rollCall);
    
    return rollCall;
}

- (NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers {
    NSMutableArray *arrayOfPlaneteerShoutsFromArray = [ NSMutableArray new ];
    for (NSUInteger i = 0 ; i < [ powers count ]; i++) {
        NSMutableString *power = [ [ powers[i] uppercaseString ] mutableCopy ] ;
        [ power appendFormat:@"!" ];
        [ arrayOfPlaneteerShoutsFromArray addObject:power ] ;
    }
    NSLog(@"%@", arrayOfPlaneteerShoutsFromArray) ;
    return arrayOfPlaneteerShoutsFromArray ;
}

- (NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers {
    NSMutableString *summonCaptainPlanetWithPowers = [@"Let our powers combine:" mutableCopy ];
    for (NSUInteger i = 0; i < [ powers count ]; i++ ) {
        NSMutableString *power = [ [ powers[i] uppercaseString ] mutableCopy ];
        
        [ summonCaptainPlanetWithPowers appendFormat:@"\n%@!", power ] ;
    }
    [ summonCaptainPlanetWithPowers appendFormat:@"\nGo Planet!" ] ;
    NSLog(@"%@", summonCaptainPlanetWithPowers) ;
    return summonCaptainPlanetWithPowers;
}

- (NSString *)firstPremiumCheeseInStock:(NSArray *)cheesesInStock
    premiumCheeseNames:(NSArray *)premiumCheeseNames {
    NSString *firstPremiumCheeseInStock ;
    for ( NSUInteger i = 0 ; i < [ cheesesInStock count ]; i++ ) {
        NSString *cheese = cheesesInStock[i] ;
        for ( NSUInteger s = 0 ; s < [ premiumCheeseNames count ]; s++ ) {
            NSString *premium = premiumCheeseNames[s] ;
            if ([ premium isEqualToString:cheese ]) {
                firstPremiumCheeseInStock = premium;
            }
        }
    }
    if ( firstPremiumCheeseInStock ) {
        return firstPremiumCheeseInStock ;
    }
    else {
        
        NSString *noCheese = @"No premium cheeses in stock." ;
        return noCheese ;
    }
}
- (NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags {
    NSMutableArray *arrayByConvertingMoneyBagsIntoPaperBills = [ NSMutableArray new ] ;
    for ( NSUInteger i = 0 ; i < [ moneyBags count ] ; i++ ) {
        NSUInteger *coins = [ moneyBags[i] length ] ;
        NSLog(@"%lu", coins) ;
        NSString *coinsWorth =  [NSString stringWithFormat:@"$%lu", coins ];
        //count each coin. When they equal $20, add a bill. When they equal
        [ arrayByConvertingMoneyBagsIntoPaperBills addObject:coinsWorth ] ;
        NSLog(@"%@", coinsWorth) ;
    }
    return arrayByConvertingMoneyBagsIntoPaperBills ;
}

@end
