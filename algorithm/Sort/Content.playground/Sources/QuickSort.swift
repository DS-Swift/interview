import Foundation

/// 用最大序号和前面比对 用 i 来做已排序号的序号
/// 通过一趟排序将要排序的数据分割成独立的两部分，其中一部分的所有数据都比另外一部分的所有数据都要小,
/// 然后再按此方法对这两部分数据分别进行快速排序，整个排序过程可以递归进行，以此达到整个数据变成有序序列
/// - Parameters:
///   - element: <#element description#>
///   - low: <#low description#>
///   - high: <#high description#>
func partition<T: Comparable>(_ element: inout [T], low: Int, high: Int) -> Int {
    let pivot = element[high]
    var i = low
    for j in low..<high {
        if element[j] <= pivot {
            element.swapAt(i, j)
            i += 1
        }
    }
    element.swapAt(i, high)
    return i
}

/// 快排
/// - Parameters:
///   - elements: <#elements description#>
///   - low: <#low description#>
///   - high: <#high description#>
public func quickSort<T: Comparable>(_ elements: inout [T], low: Int, high: Int) {
    if high > low {
        let p = partition(&elements, low: low, high: high)
        quickSort(&elements, low: low, high: p-1)
        quickSort(&elements, low: p+1, high: high)
    }
}
