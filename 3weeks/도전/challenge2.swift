//
//  challenge2.swift
//  3weeks
//
//  Created by Luca Park on 6/9/25.
//

import Foundation

struct SortableBox<T: Comparable> {
    var items: [T] = []

    mutating func sortItems() where T: Comparable {
        items.sort()
    }
}
