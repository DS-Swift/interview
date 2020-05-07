import Foundation
/// 冒泡排序 太慢


public func bubbleSort<T>(_ elements: [T]) -> [T] where T: Comparable {
    return bubbleSort(elements, <)
}

public func bubbleSort<T>(_ elements: [T], _ comparsion: (T, T) -> Bool) -> [T] {
    var array = elements
    for i in 0..<array.count {
        for j in 1..<(array.count - i) {
            if comparsion(array[j], array[j-1]) {
                let temp = array[j-1]
                array[j-1] = array[j]
                array[j] = temp
            }
        }
    }
    return array
}
