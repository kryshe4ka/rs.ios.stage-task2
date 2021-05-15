#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    
    NSInteger count = 0;
    NSInteger lenght = array.count;
    for (int i = 0; i < lenght; i++) {
        for (int j = i+1; j < lenght; j++) {
            if (abs([array[i] intValue] - [array[j] intValue]) == [number intValue]) {
                count++;
            }
        }
    }
    
    return count;
}

@end
