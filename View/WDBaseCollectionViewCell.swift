//
//  WDCollectionViewCell.swift
//  Project
//
//  Created by wq on 2021/4/14.
//

import UIKit

class WDBaseCollectionViewCell: UICollectionViewCell {

    /** 配置 */
    func initializeDefault() {

    }

    /** 布局 */
    func setAutomaticLayout() {

    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.initializeDefault()
        self.setAutomaticLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
