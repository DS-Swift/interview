import Foundation

public func mergeSort<T: Comparable>(_ array: inout [T]) {
    let rs = _mergeSort(array)
    array = rs
}
private func _mergeSort<T: Comparable>(_ array: [T]) -> [T] {
    guard array.count > 1 else {
        return array
    }
    let mid = array.count / 2
    let left = _mergeSort(Array(array[0..<mid]))
    let right = _mergeSort(Array(array[mid..<array.count]))
    return merge(left: left, right: right)
}

private func merge<T: Comparable>(left: [T], right: [T]) -> [T] {
    var order = [T]()
    var leftIndex = 0
    var rightIndex = 0
    while leftIndex < left.count, rightIndex < right.count {
        if left[leftIndex] < right[rightIndex] {
            order.append(left[leftIndex])
            leftIndex += 1
        } else if left[leftIndex] > right[rightIndex] {
            order.append(right[rightIndex])
            rightIndex += 1
        } else {
            order.append(left[leftIndex])
            leftIndex += 1
            order.append(right[rightIndex])
            rightIndex += 1
        }
    }
    ///将剩下可能未比对完成的数据插入到后面
    while leftIndex < left.count {
        order.append(left[leftIndex])
        leftIndex += 1
    }
    while rightIndex < right.count {
        order.append(right[rightIndex])
        rightIndex += 1
    }
    return order
}
