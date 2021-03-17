//
//  CodingTest.swift
//  TestCodility
//
//  Created by Prabhat Tiwari on 17/03/21.
//

import Foundation

public func solution(_ N : Int) -> Int {
    let strNumber = "\(abs(N))"
    var arr = [Int]();
    for index in 0...strNumber.count {
        var str = strNumber
        str.insert("5", at: str.index(str.startIndex, offsetBy: index))
        let num = N < 0 ? -Int(str)! : Int(str)!
        arr.append(num)
    }
    return arr.max() ?? 0
}

public func solution(_ A : inout [Int]) -> Int {
    if A.allSatisfy({ $0 == 0 }) {
        return -1
    }
    let unExpected = 1000000000
    var pairs = 0
    for index in 0..<A.count {
        for i in index..<A.count {
            let arr = A[index ..< i + 1]
            let sum = arr.reduce(0, +)
            if sum > unExpected {
                return -1
            }
            if sum == 0 {
                pairs += 1
            }
        }
    }
    return pairs
}
