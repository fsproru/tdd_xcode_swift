//
//  FlickrService.swift
//  tddTests
//
//  Created by Alex Tamoykin on 8/6/20.
//  Copyright © 2020 Right Balance. All rights reserved.
//

import XCTest
@testable import tdd

class FlickrService: XCTestCase {

    func testSearchingForImages() throws {
        let service = tdd.FlickrService(apiToken: "testToken", isTest: true)
        let photos = service.search(text: "funny cats")
        XCTAssertEqual(photos.count, 0)
    }

}
