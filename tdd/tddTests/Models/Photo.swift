//
//  Photo.swift
//  tddTests
//
//  Created by Alex Tamoykin on 8/6/20.
//  Copyright © 2020 Right Balance. All rights reserved.
//

import XCTest
@testable import tdd

class Photo: XCTestCase {

    func testUrlParsing() throws {
        let photo = tdd.Photo(
            id: "id1",
            title: "Cat1",
            isPublic: true,
            server: "server1",
            secret: "secret1",
            farm: "farm1"
        )

        XCTAssertEqual(
            photo.getImagePath()?.absoluteString,
            "http://farmfarm1.static.flickr.com/server1/id1_secret1.jpg"
        )
    }

}
