//
//  required4.swift
//  3weeks
//
//  Created by Luca Park on 6/5/25.
//

import Foundation

// 우리는 여러 타입에 “자기소개” 기능을 부여하고자 합니다.
//
// - [ ]  Introducible 프로토콜을 정의하세요.
//    - name: String 프로퍼티를 요구사항으로 포함합니다.
//    - introduce() -> String 메서드를 요구사항으로 포함합니다.
//        - 동작 예시: print("안녕하세요, 저는 \(name)입니다.")
// - [ ]  Robot, Cat, Dog 타입을 정의하고 Introducible 프로토콜을 채택해주세요.
// - [ ]  Robot 타입의 경우, name 값이 변경될 때마다 변경 이전값과 이후 값을 출력하도록 구현해주세요.
//    - 만약 변경 이전값과 이후값이 같다면 출력하지 않아야합니다.
//    - 출력 예시
//        ```swift
//        name 변경 알림
//        변경 이전 값: 피규어
//        변경 이후 값: 옵티머스
//        ```
// - [ ]  Introducible 프로토콜 에 정의되지 않은 각 타입 고유의 메서드들도 하나씩 추가 정의해주세요.
//    - 예를 들어, Robot 은 충전하기(batteryCharge) 라는 메서드를 추가 할 수 있습니다.
// - [ ]  `[Introducible]` 타입 배열을 정의하고, Robot, Cat, Dog 인스턴스 1개씩을 append 해주세요.
//    - 배열을 순회하며 각 타입 고유의 메서드들을 호출하는 코드를 작성해주세요.

var skillList: [Introducible] = []

protocol Introducible {
    var name: String { get }
    func introduce() -> String // print("안녕하세요, 저는 \(name)입니다.")
}

extension Introducible {
    func introduce() -> String {
        return "안녕하세요, 저는 \(name)입니다."
    }
}

struct Robot: Introducible {
    // 프로퍼티 옵저버
    var name: String {
        didSet {
            if oldValue != name {
                print("name 변경 알림")
                print("변경 이전 값: \(oldValue)")
                print("변경 이후 값: \(name)")
            }
        }
    }

    func introduce() -> String {
        return "Hello, I'm \(name)."
    }

    func batteryCharge() -> String {
        return "충전 중입니다."
    }
}

struct Cat: Introducible {
    var name: String

//    func introduce() -> String {
//        return "안녕하세요, 저는 \(name)입니다."
//    }

    func purr() -> String {
        return "그르릉"
    }

    init(name: String) {
        self.name = name
    }
}

struct Dog: Introducible {
    var name: String

//    func introduce() -> String {
//        return "안녕하세요, 저는 \(name)입니다."
//    }

    func bark() -> String {
        return "댕댕"
    }

    init(name: String) {
        self.name = name
    }
}

func robotCall() {
    var robot = Robot(name: "피규어")
    robot.name = "옵티머스"
    robot.name = "옵티머스"
}

func skillAppend() {
    skillList.append(Robot(name: "피규어"))
    skillList.append(Cat(name: "끙끙이"))
    skillList.append(Dog(name: "도토리"))
}

func skillPrint() {
    skillAppend()
    for skill in skillList {
        if let robot = skill as? Robot {
            print(robot.batteryCharge())
        } else if let cat = skill as? Cat {
            print(cat.purr())
        } else if let dog = skill as? Dog {
            print(dog.bark())
        }
    }
}
