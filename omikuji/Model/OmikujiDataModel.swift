//
//  OmikujiDataModel.swift
//  omikuji
//
//  Created by 伏貫祐樹 on 2019/09/10.
//  Copyright © 2019 yuki fushinuki. All rights reserved.
//

import Foundation

struct OmikujiDataModel {
    
    private(set) var result: String
    private var cards: [String]
    
    init() {
        
        self.cards  = ["大吉", "吉", "中吉", "末吉", "凶"]
        self.result = "未抽選"
    
    }
    
    mutating func lottery() {
        
        let randomNumber = Int.random(in: 0...4)
        
        self.result = cards[randomNumber]
        
    }
    
    func decideOmikujiImage() -> String {
        
        if self.result == "大吉" {
            return "omikuji_daikichi"
        } else if self.result == "吉" {
            return "omikuji_kichi"
        } else if self.result == "中吉" {
            return "omikuji_chuukichi"
        } else if self.result == "末吉" {
            return "omikuji_suekichi"
        } else {
            return "omikuji_kyou"
        }
        
    }
}
