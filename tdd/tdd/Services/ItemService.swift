//
//  ItemService.swift
//  tdd
//
//  Created by Alex Tamoykin on 8/6/20.
//  Copyright © 2020 Right Balance. All rights reserved.
//

import Foundation

class ItemService {
    let isTest: Bool

    init(isTest: Bool = false) {
        self.isTest = isTest
    }

    func getItems() -> [Item] {
        if (self.isTest) {
            return self.getMockItems()
        }

        // otherwise fetch it from the network as usual
        return []
    }

    private func getMockItems() -> [Item] {
        guard
            let path = Bundle(for: type(of: self)).path(forResource: "items", ofType: "json"),
            let data = try? Data(contentsOf: URL(fileURLWithPath: path), options: .alwaysMapped)
        else {
            return []
        }

        let items = try? JSONDecoder().decode([Item].self, from: data)
        return items ?? []
    }
}
