//
//  challenge1.swift
//  3weeks
//
//  Created by Luca Park on 6/5/25.
//

import Foundation
//- ‘자동차’ 라는 개념을 가지고 객체 지향 설계를 해봅니다.
//    - [ ]  Base Class `Car` 를 설계해주세요.
//        - 4가지의 상태를 정의해주세요.
//            - 브랜드, 모델, 연식
//                - 모두 String 타입입니다.
//            - 엔진
//                - Engine 이라는 커스텀 타입으로 정의해주세요.
//        - 1개의 동작을 정의해주세요.
//            - 운전하기
//                - 동작 예시) “Car 주행 중…”  출력
//        - 추가하고 싶은 상태와 동작은 마음껏 추가해주세요.
//            - stop(), charge(), refuel() 등..
//        - 정의한 각 상태 및 동작에 적절한 접근 제어자를 명시적으로 지정해주세요.
//    - [ ]  `Car` 를 상속한 `ElectricCar` 를 설계해주세요.
//        - ElectricEngine 타입의 Engine 을 사용해야합니다.
//    - [ ]  `Car` 를 상속한 `HybridCar` 를 설계해주세요.
//        - 새로운 엔진 타입 `HydrogenEngine` 을 정의해주세요.
//        - HybridCar 에는 기존 Car 에 없던 새로운 동작이 추가됩니다.
//            - 엔진을 런타임에 바꿀 수 있는 `switchEngine(to:)` 입니다.
//    - [ ]  `HybridCar` 인스턴스를 생성하고, `switchEngine(to:)` 를 호출하여 서로 다른 타입의 엔진으로 교체하는 코드를 작성해주세요.
//    - [ ]  상속을 사용하여 기능을 추가하는 것과, 프로토콜 채택을 통해서 기능을 추가하는 것의 장단점, 차이를 고민하고 주석으로 서술해주세요.

class Engine {
    private var startUp: Bool
    
    func start () -> String {
        startUp = true
        return "시동 ON"
    }
    
    func stop () -> String {
        startUp = false
        return "시동 OFF"
    }
    
    init(engineStatus: Bool) {
        self.startUp = engineStatus
    }
}

class ElectricEngine: Engine {
    
}

class Car {
    var brand: String
    var model: String
    var engine: Engine
    private var year: String
    private var hazard: Bool
    private var fuelAmount: Int
    
    enum Blinker {
        case left
        case right
        case off
    }
    
    private func drive() -> String {
        return "Car 주행 중..."
    }
    
    private func hazardLightToggle() -> String {
        hazard.toggle()
        return "hazard light is \(hazard ? "on" : "off")"
    }
    
    init(brand: String, model: String, year: String, engine: Engine, hazard: Bool, fuelAmount: Int) {
        self.brand = brand
        self.model = model
        self.year = year
        self.engine = engine
        self.hazard = hazard
        self.fuelAmount = fuelAmount
    }
}

class ElectricCar: ElectricEngine {
    // 아 모르겠다.
}
