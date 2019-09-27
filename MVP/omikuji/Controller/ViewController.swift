//
//  ViewController.swift
//  omikuji
//
//  Created by 伏貫祐樹 on 2019/09/06.
//  Copyright © 2019 yuki fushinuki. All rights reserved.
//

import PopupDialog
import UIKit

protocol ViewManager: AnyObject {
    func updateView()
}

class ViewController: UIViewController {

    // おみくじデータをインスタンス化
    private var omikuji = OmikujiDataModel()

    // Presenterの用意
    private lazy var omikujiPresenter = OmikujiPresenter(view: self, omikuji: omikuji)

    // viewが読み込まれたとき
    override func viewDidLoad() {

        super.viewDidLoad()
        omikujiPresenter.viewDidLoad()

    }

    // 「引く」ボタンが押された
    @IBAction private func lotteryButton(_ sender: UIButton) {

        omikujiPresenter.didTappedLotteryButton()

    }

}

extension ViewController: ViewManager {
    // 画面を更新する
    func updateView() {
        let title = "おみくじ結果"
        let message = omikuji.result

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
