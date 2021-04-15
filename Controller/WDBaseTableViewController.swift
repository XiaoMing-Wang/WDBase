//
//  WDTableViewController.swift
//  Project
//
//  Created by wq on 2021/4/14.
//

import UIKit

class WDBaseTableViewController: WDBaseViewController {

    public var dataSource: [Any] = []

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    ///是否是分组类型
    func isTableGroup() -> Bool {
        return false
    }

    override func personalizedConfiguration() {
        isTableGroup() ? view.addSubview(tableViewGroup) : view.addSubview(tableView)
    }

    public lazy var tableView: UITableView = {
        var tableView = UITableView(frame: kEdgeRect)
        tableView.sectionFooterHeight = 0
        tableView.sectionHeaderHeight = 0
        tableView.rowHeight = 49
        tableView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        tableView.tableFooterView = UIView()
        tableView.showsHorizontalScrollIndicator = false
        tableView.showsVerticalScrollIndicator = false
        tableView.backgroundColor = .white
        tableView.separatorColor = .lightGray
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableHeaderView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0.01))
        tableView.tableFooterView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0.01))
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "defcell")
        if #available(iOS 11.0, *) {
            tableView.contentInsetAdjustmentBehavior = .never
        }
        return tableView
    }()
    
    public lazy var tableViewGroup: UITableView = {
        var tableView = UITableView(frame: kEdgeRect, style: .grouped)
        tableView.sectionFooterHeight = 0
        tableView.sectionHeaderHeight = 0
        tableView.rowHeight = 49
        tableView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        tableView.tableFooterView = UIView()
        tableView.showsHorizontalScrollIndicator = false
        tableView.showsVerticalScrollIndicator = false
        tableView.backgroundColor = .white
        tableView.separatorColor = .lightGray
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableHeaderView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0.01))
        tableView.tableFooterView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0.01))
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "defcell")
        if #available(iOS 11.0, *) {
            tableView.contentInsetAdjustmentBehavior = .never
        }
        return tableView
    }()
}

extension WDBaseTableViewController: UITableViewDelegate, UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "defcell", for: indexPath)
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        scrollView.endEditing(true)
    }    

}

