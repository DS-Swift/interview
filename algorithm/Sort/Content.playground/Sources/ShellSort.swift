import Foundation

public func ShellSort<T: Comparable>(_ elements: [T]) {
    var d = elements.count
    let length = elements.count
    while d > 1 {
        d = d >> 1
        for i in 0..<d {
            for j in i+d..<length {
                if elements[j] < elements[j-d] {
                    
                }
            }
        }
    }
}
