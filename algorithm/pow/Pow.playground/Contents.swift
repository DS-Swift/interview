import Cocoa


/// 递归核心思想, 分而治之, 分开一次, 回来一次 相加 便是 n
/// - Parameters:
///   - x: <#x description#>
///   - n: n 可能为负数 1/ 2^(-n)
func powRecursive(x: Int, n: Int) -> CGFloat {
    if n == 0 {
        return 1
    }
    if n < 0 {
        return 1 / powRecursive(x: x, n: -n)
    }
    ///奇数
    if n % 2 != 0 {
        return CGFloat(x) * powRecursive(x: x, n: n - 1)
    }
    return powRecursive(x: x * x, n: n/2)
}

func powWhile(x: Int, n: Int) -> CGFloat {
    var newN = n
    var newX: CGFloat = CGFloat(x)
    if n < 0 {
        newN = -n
        newX = 1 / newX
    }
    var rs: CGFloat = 1
    while newN > 0 {
        /// 如果是奇数
        if newN & 1 == 1 {
            rs *= newX
        }
        newX *= newX
        newN >>= 1
    }
    
    return rs
}

let b = powWhile(x: 2, n: 3)
print(b)
