#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
    
    if (array == nil || array.count == 0) {
        return @[];
    }
    
    for (int i = 0; i < array.count; i++) {
        if (!([array[i] isKindOfClass:[NSArray class]])) {
            return @[];
        }
    }
    
    NSMutableArray *numberArray = [NSMutableArray arrayWithArray:@[]];
    NSMutableArray *stringArray = [NSMutableArray arrayWithArray:@[]];
    
    for (int j = 0; j < [array count]; j++) {
        for (int i = 0; i < [array[j] count]; i++) {
            if ([array[j][i] isKindOfClass:[NSNumber class]]) {
                [numberArray addObject:array[j][i]];
            } else {
                [stringArray addObject:array[j][i]];
            }
        }
    }
    
    NSArray *numberArraySorted = [numberArray sortedArrayUsingSelector:@selector(compare:)];
    NSArray *stringArraySorted = [stringArray sortedArrayUsingSelector:@selector(compare:)];
        
    if (stringArray.count == 0) {
        return numberArraySorted;
    } else if (numberArray.count == 0) {
        return stringArraySorted;
    } else {
        
        NSArray* reversedArray = [[stringArraySorted reverseObjectEnumerator] allObjects];

        return @[numberArraySorted, reversedArray];
    }
}

@end


