//
//  required5.swift
//  3weeks
//
//  Created by Luca Park on 6/5/25.
//
//
// - 주소가 잘못된 경우
// - 배송이 아직 시작되지 않은 경우
// - 시스템 서버 에러로 예측이 불가능한 경우
// - [ ]  배송 상태를 표현하는 DeliveryStatus 열거형을 구현하고, 아래 3가지 상태를 포함하도록 합니다.
//    - notStarted
//    - inTransit(daysRemaining: Int)
//    - error
// - [ ]  사용자 정의 에러 타입 DeliveryError를 Error 프로토콜을 따르도록 정의합니다.
//    - invalidAddress
//    - notStarted
//    - systemError(reason: String)
// - [ ]  아래 시그니처를 가진 throwing function 을 구현해봅니다.
//    ```swift
//    func predictDeliveryDay(for address: String, status: DeliveryStatus) throws -> String
//    ```
//    - 주소가 빈 문자열이면 DeliveryError.invalidAddress를 던져야 합니다.
//    - 배송이 아직 시작되지 않은 경우 DeliveryError.notStarted를 던져야 합니다.
//    - 시스템 에러 상태면 DeliveryError.systemError(reason:)을 던져야 합니다.
//    - 나머지 경우에는 "배송까지 X일 남았습니다." 형태의 문자열을 반환합니다.
// - [ ]  위 함수를 do-catch 로 호출하고, 각 에러 상황에 따라 사용자에게 다른 메시지를 출력하세요.

enum DeliveryStatus {
    case notStarted
    case inTransit(daysRemaining: Int)
    case error
}

enum DeliveryError: Error {
    case invalidAddress
    case notStarted
    case systemError(reason: String)
}

func predictDeliveryDay(for address: String, status: DeliveryStatus) throws -> String {
    guard !address.isEmpty else {
        throw DeliveryError.invalidAddress
    }

    switch status {
    case .notStarted:
        throw DeliveryError.notStarted
    case .error:
        throw DeliveryError.systemError(reason: "System Error")
    case .inTransit(let daysRemaining):
        return "배송까지 \(daysRemaining)일 남았습니다."
    }
}

func deliveryDay(for address: String, status: DeliveryStatus) {
    do {
        let result = try predictDeliveryDay(for: address, status: status)
        print(result)
    } catch DeliveryError.invalidAddress {
        print("잘못된 주소")
    } catch DeliveryError.notStarted {
        print("출발하지 않음")
    } catch DeliveryError.systemError(let reason) {
        print(reason)
    } catch {
        print("")
    }
}
