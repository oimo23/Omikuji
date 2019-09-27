//
//  OmikujiPresenter.swift
//  omikuji
//
//  Created by 伏貫祐樹 on 2019/09/26.
//  Copyright © 2019 yuki fushinuki. All rights reserved.
//

import Foundation

final class OmikujiPresenter {

    private weak var view: ViewManager?
    private var omikuji: OmikujiDataModel?

    init(view: ViewController, omikuji: OmikujiDataModel) {

        self.view = view
        self.omikuji = omikuji

    }

    func viewDidLoad() {

        // Viewを更新
        view?.updateView()

    }

    func didTappedLotteryButton() {

        // 抽選を行う
        omikuji?.lottery()

        // Viewを更新
        view?.updateView()
    
    }

}
