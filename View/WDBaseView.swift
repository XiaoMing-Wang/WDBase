//
//  WDView.swift
//  Project
//
//  Created by wq on 2021/4/14.
//

import UIKit

class WDView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        initializeDefault()
        automaticLayout()
    }

    convenience init() {
        self.init(frame: .zero)
        initializeDefault()
        automaticLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    /** 配置 */
    func initializeDefault() {

    }

    /** 布局 */
    func automaticLayout() {

    }

}
