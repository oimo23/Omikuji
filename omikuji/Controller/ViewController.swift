//
//  ViewController.swift
//  omikuji
//
//  Created by 伏貫祐樹 on 2019/09/06.
//  Copyright © 2019 yuki fushinuki. All rights reserved.
//

import PopupDialog
import UIKit

class ViewController: UIViewController {
    
    // おみくじデータをインスタンス化
    private var omikuji = OmikujiDataModel()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
    }
    
    // 「引く」ボタンが押された
    @IBAction func lotteryButton(_ sender: UIButton) {
        
        // 抽選を行う
        omikuji.lottery()
        
        // ポップアップダイアログの中身を更新する
        updatePopupUI()
        
    }
    
    // おみくじ結果を更新して表示
    func updatePopupUI() {
        
        let title = "おみくじ結果"
        let message = omikuji.result
        // let image = UIImage(named: omikuji.decideOmikujiImage())
        
        // 設定した内容でポップアップダイアログを生成
        let popup = PopupDialog(title: title, message: message)
        
        // ボタンを作成
        let buttonOK = CancelButton(title: "OK") {}

        // 作成したボタンを追加
        popup.addButtons([buttonOK])
        
        // ダイアログを出す
        self.present(popup, animated: true, completion: nil)
        
    }


}
