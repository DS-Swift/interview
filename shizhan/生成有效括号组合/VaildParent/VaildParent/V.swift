//
//  V.swift
//  VaildParent
//
//  Created by ds on 2020/5/23.
//  Copyright © 2020 ds. All rights reserved.
//

import Foundation

class Solution {
    var list: [String] = []
    public func vaildParent(n: Int) -> [String] {
        _gen(left: 0, right: 0, n: n, value: "")
        return self.list
    }

    private func _gen(left: Int, right: Int, n: Int, value: String) {
        if left == n && right == n {
            list.append(value)
            return
        }
        if left < n {
            _gen(left: left + 1, right: right, n: n, value: value + "(")
        }
        if right < n && right < left {
            _gen(left: left, right: right + 1, n: n, value: value + ")")
        }
    }

}

