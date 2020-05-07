import Foundation

/// 选择排序
/// - Parameters:
///   - elements: 可排序的数组
///   - comparsion: 比较
///   - Author: DSperson
public func selectionSort<T: Comparable>(_ elements: [T], _ comparsion: (T, T) -> Bool) -> [T] {
    var array = elements
    for i in 0..<array.count {
        var lowest = i
        for j in i + 1 ..< array.count {
            /// 从右边选择出最小或者最大值的序号
            if comparsion(array[j], array[lowest]) {
                lowest = j
            }
        }
        if lowest != i {
            array.swapAt(i, lowest)
        }
    }
    return array
}
