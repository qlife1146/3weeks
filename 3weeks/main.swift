//
//  main.swift
//  3weeks
//
//  Created by Luca Park on 6/4/25.
//

import Foundation

// 필수 1
caculate(closure: sum) // '두 수의 합은 30 입니다'

// 필수 2-1
result = numbers.map { String($0) }
print(result) // '["1", "2", "3", "4", "5"]'

// 필수 2-2
print(type(of: requireTwoNumbers)) // 'Array<Int>'
let requireTwoResult = requireTwoFilter.map { String($0) }
print(type(of: requireTwoResult)) // 'Array<String>'

// 필수 2-3
let reqiureThreeResult = myMap([1, 2, 3, 4, 5]) {
    String($0)
}

print(reqiureThreeResult) // '["1", "2", "3", "4", "5"]'
