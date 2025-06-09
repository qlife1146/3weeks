//
//  challenge3.swift
//  3weeks
//
//  Created by Luca Park on 6/9/25.
//

import Foundation

class A {
    var b: B?
    deinit {
        print("deinit: A")
    }
}

class B {
    var a: A?
    var closure: (() -> Void)?

    deinit {
        print("deinit: B")
    }
}
