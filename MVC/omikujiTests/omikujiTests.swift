//
//  omikujiTests.swift
//  omikujiTests
//
//  Created by 伏貫祐樹 on 2019/09/06.
//  Copyright © 2019 yuki fushinuki. All rights reserved.
//

import XCTest
@testable import omikuji

class omikujiTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testOmikujiDataModel() {
        
        var omikuji = OmikujiDataModel()
        
        omikuji.lottery()
        
        XCTAssertNotEqual(omikuji.result, "未抽選", "おみくじ抽選機能テスト")
        
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
