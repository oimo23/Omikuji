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
    @IBAction private func lotteryButton(_ sender: UIButton) {

        // 抽選を行う
        omikuji.lottery()

        // ポップアップダイアログの中身を更新する
        let updatedPopup: PopupDialog = updatePopupUI()

        // ダイアログを出す
        self.present(updatedPopup, animated: true, completion: nil)

    }

    // おみくじ結果を更新して返す
    func updatePopupUI() -> PopupDialog {

        let title = "おみくじ結果"
        let message = omikuji.result

        // 設定した内容でポップアップダイアログを生成
        let popup = PopupDialog(title: title, message: message)

        // ボタンを作成
        let buttonOK = CancelButton(title: "OK") {}

        // 作成したボタンを追加
        popup.addButtons([buttonOK])

        return popup

    }


}
