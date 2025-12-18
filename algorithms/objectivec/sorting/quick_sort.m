#import <Foundation/Foundation.h>

@interface QuickSorter : NSObject
+ (NSArray *)quickSort:(NSArray *)unsortedArray;
@end

@implementation QuickSorter
+ (NSArray *)quickSort:(NSArray *)unsortedArray {
    if ([unsortedArray count] <= 1) {
        return unsortedArray;
    }
    
    NSNumber *pivot = [unsortedArray lastObject];
    NSMutableArray *less = [NSMutableArray array];
    NSMutableArray *greater = [NSMutableArray array];
    
    for (NSUInteger i = 0; i < [unsortedArray count] - 1; i++) {
        NSNumber *num = unsortedArray[i];
        if ([num floatValue] < [pivot floatValue]) {
            [less addObject:num];
        } else {
            [greater addObject:num];
        }
    }
    
    NSMutableArray *sortedArray = [NSMutableArray array];
    [sortedArray addObjectsFromArray:[self quickSort:less]];
    [sortedArray addObject:pivot];
    [sortedArray addObjectsFromArray:[self quickSort:greater]];
    
    return sortedArray;
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *arr = @[@10, @7, @8, @9, @1, @5];
        NSLog(@"Original: %@", arr);
        NSArray *sorted = [QuickSorter quickSort:arr];
        NSLog(@"Sorted: %@", sorted);
    }
    return 0;
}
