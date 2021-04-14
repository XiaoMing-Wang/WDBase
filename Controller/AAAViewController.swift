//
//  AAAViewController.swift
//  Project
//
//  Created by wq on 2021/4/14.
//

import UIKit

class AAAViewController: WDTableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        /**<  */
        /**< kLogPrint(aaaaa.name)  */
        dataSource.append("1")
        dataSource.append("2")
        dataSource.append("3")

        let aaaaa = dataSource.first
    }

}
