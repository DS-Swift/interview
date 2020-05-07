import Foundation

/// 插入排序
/// - Parameters:
///   - elements: 数据源
///   - comparsion: 比较
public func insertionSort<T>(_ elements: [T], _ comparsion: (T, T) -> Bool) -> [T] {
    guard  elements.count >= 1 else {
        return elements
    }
    var array = elements
    for i in 1..<array.count {
        var j = i
        let temp = array[j]
        /// 用这个临时变量和已经排序好的值进行比较(左边的数据)
        while j > 0, comparsion(temp, array[j-1]) {
            array[j] = array[j-1]
            j-=1
        }
        array[j] = temp
    }
    return array
}
