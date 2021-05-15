#import "ReverseBinary.h"

UInt8 ReverseInteger(UInt8 n) {
    

    UInt8 reverseInt = 0;
    NSMutableArray *array = [[NSMutableArray alloc] init];
    
    if (n == 0) {
        return reverseInt; // reverseInt = 0
    }
    //    из числа в бинарный массив в обратном порядке
    while (!(n <= 1)) {
        [array addObject:@(n % 2)];
        n = n / 2;
    }
    [array addObject:@(1)];
    // добавить недостающие нули
        
    if (array.count < 8) {
        NSUInteger lenght = 8 - array.count;
        for (int i = 0; i < lenght; i++) {
            [array addObject:@(0)];
        }
    }
    
    //    из массива в новое число
    for (int i = 0; i < array.count; i++) {
        reverseInt += [array[i] integerValue] * pow(2, array.count-1-i);
    }
        
    //    вернуть полученное число
    return reverseInt;
}

// число будем делить на два, и записывать числа в строку или в массив чисел
// 22 -> 10110
// 01101000 -> в число в десятичной
// 0 * 2 в степени (длина массива- 1)
// 1 * 2 в степени (длина массива - 2) и т.д.
