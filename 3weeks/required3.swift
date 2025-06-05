//
//  required3.swift
//  3weeks
//
//  Created by Luca Park on 6/4/25.
//

import Foundation

// ### 필수 문제 3
//
// - [ ]  Int 배열의 짝수번째 요소를 제거해서 반환하는 함수 `a` 를 작성해주세요.
//    - 테스트 입력: [1, 2, 3, 4, 5]
//    - 테스트 출력: [1, 3, 5]
// - [ ]  String 배열의 짝수번째 요소를 제거해서 반환하는 함수 `b` 를 작성해주세요.
//    - 테스트 입력: [”가”, “나”, “다”, “라”, “마”]
//    - 테스트 출력: [”가”, “다”, ”마”]
// - [ ]  위 두 함수를 하나의 함수로 대체할 수 있는 방법을 고민해보고, 함수 `c` 로 작성해주세요.
// - [ ]  테스트 입력들을 넣고 호출하여 출력이 제대로 나오는지 작성해주세요.
//    - 테스트 입력: [1, 2, 3, 4, 5], [”가”, “나”, “다”, “라”, “마”]
//    - 테스트 출력: [1, 3, 5], [”가”, “다”, ”마”]
// - [ ]  함수 `c` 를 기반으로 수정하여 함수 `d` 를 작성해주세요.
//    - 파라미터의 타입을 << 'Numeric 프로토콜'을 준수하는 타입의 요소를 가진 배열 >> 로 변경합니다.

func a(arr: [Int]) -> [Int] {
    return arr.enumerated()
        .filter { $0.offset % 2 == 0 }
        .map { $0.element }
}

func b(arr: [String]) -> [String] {
    return arr.enumerated()
        .filter { $0.offset % 2 == 0 }
        .map { $0.element }
}

func c<T>(_ arr: [T]) -> [T] {
    return arr.enumerated()
        .filter { $0.offset % 2 == 0 }
        .map { $0.element }
}

func d<T: Numeric>(_ arr: [T]) -> [T] {
    return arr.enumerated()
        .filter { $0.offset % 2 == 0 }
        .map { $0.element }
}
