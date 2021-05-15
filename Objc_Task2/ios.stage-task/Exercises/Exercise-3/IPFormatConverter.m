#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    
    if (numbersArray == nil || numbersArray.count == 0) {
        return @"";
    }
    
    NSMutableArray *resultArray = [NSMutableArray arrayWithArray: @[@0, @0, @0, @0]];
    
    int i = 0;
    while ((i < 4) && (i < numbersArray.count)) {
        if ([numbersArray[i] intValue] < 0) {
            return @"Negative numbers are not valid for input.";
        } else if ([numbersArray[i] intValue] > 255) {
            return @"The numbers in the input array can be in the range from 0 to 255.";
        } else {
            [resultArray replaceObjectAtIndex:i withObject:numbersArray[i]];
        }
        i++;
    }
    
    NSString *str = [NSString stringWithFormat:@"%d.%d.%d.%d", [resultArray[0] intValue], [resultArray[1] intValue], [resultArray[2] intValue], [resultArray[3] intValue]];
    
    return str;
}

@end
