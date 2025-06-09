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

// 필수 3-a
print(a(arr: [1, 2, 3, 4, 5])) // '[1, 3, 5]'

// 필수 3-b
print(b(arr: ["가", "나", "다", "라", "마"])) // '["가", "다", "마"]'

// 필수 3-c
print(c([1, 2, 3, 4, 5])) // '[1, 3, 5]'
print(c(["가", "나", "다", "라", "마"])) // '["가", "다", "마"]'

// 필수 3-d
print("\(d([1, 2, 3, 4, 5]))") // '[1, 3, 5]'
// print("\(d["가", "나", "다", "라", "마"])") // only numeric

// 필수 4
robotCall() // 기본 이름: 피규어 / 변경: 피규어 -> 옵티머스 -> 옵티머스
skillPrint() // 고유 메소드 호출

// 필수 5
deliveryDay(for: "", status: DeliveryStatus.inTransit(daysRemaining: 30))
deliveryDay(for: "dsas", status: DeliveryStatus.inTransit(daysRemaining: 30))
deliveryDay(for: "djqwipdwq", status: DeliveryStatus.error)
deliveryDay(for: "dsa", status: DeliveryStatus.notStarted)

// 도전 1
let hybridCar = HybridCar(brand: "TOYOTA", model: "PRIDE", year: "2025", engine: HydrogenEngine())
hybridCar.switchEngine(to: ElectricEngine())

// 도전 2
var box = SortableBox(items: [3, 1, 4, 2])
box.sortItems()
print(box.items)

// 도전 4
var a: A? = A()
var b: B? = B()

//a?.b = b
//b?.a = a
b?.closure = { [weak a] in
    print("\(a!)")
}
b?.closure?()

a = nil
b = nil
