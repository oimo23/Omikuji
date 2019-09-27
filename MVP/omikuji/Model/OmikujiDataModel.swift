//
//  OmikujiDataModel.swift
//  omikuji
//
//  Created by 伏貫祐樹 on 2019/09/10.
//  Copyright © 2019 yuki fushinuki. All rights reserved.
//

import Foundation

final class OmikujiDataModel {

    private(set) var result: String
    private var cards: [String]

    init() {

        self.cards  = ["大吉", "吉", "中吉", "末吉", "凶"]
        self.result = "未抽選"

    }

    func lottery() {

        let randomNumber = Int.random(in: 0...4)

        self.result = cards[randomNumber]

    }

}
