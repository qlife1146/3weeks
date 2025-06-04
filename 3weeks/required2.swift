//
//  required2.swift
//  3weeks
//
//  Created by Luca Park on 6/4/25.
//

import Foundation

// 아래 for-in 문을 map 을 사용하는 코드로 변환해주세요.
// let numbers = [1, 2, 3, 4, 5]
// var result = [String]()
// for number in numbers {
//  result.append(number)
// }
// ​
// 주어진 입력값을 고차함수를 체이닝하여 주어진 출력값이 나오도록 구현해주세요.
// 입력: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] - 타입: Array<Int>
// 출력: [”2”, “4”, “6”, “8”, “10”] - 타입: Array<String>
// 힌트
// 이제 고차함수를 직접 만들어 봅니다.
// 함수명: myMap
// 파라미터는 2개 입니다.
// 배열: [Int]
// 변환 클로저: (Int) → String
// 반환 값은 1개 입니다.
// [String]
// myMap 함수 구현 내부에서 map, filter, reduce 등 고차함수를 직접 사용하지 않아야합니다.
// 완성된 myMap 호출 예시
// let result = myMap([1, 2, 3, 4, 5]) {
//    String($0)
// }
//
// print(result) // ["1", "2", "3", "4", "5"]

let numbers = [1, 2, 3, 4, 5]
var result = [String]()

let requireTwoNumbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
var requireTwoFilter = requireTwoNumbers.filter { $0 % 2 == 0 }

func myMap(_ array: [Int], _ result: (Int) -> String) -> [String] {
    let array = array
    var resultArray: [String] = []
    for i in array {
        resultArray.append(String(i))
    }
    return resultArray
}
