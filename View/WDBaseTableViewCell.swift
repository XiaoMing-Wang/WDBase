//
//  WDTableViewCell.swift
//  Project
//
//  Created by wq on 2021/4/14.
//

import UIKit

class WDTableViewCell: UITableViewCell {

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        initializeDefault()
        setAutomaticLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) h@objc as not been implemented")
    }

    /** 配置 */
    func initializeDefault() {

    }

    /** 布局 */
    func setAutomaticLayout() {

    }
    
}
