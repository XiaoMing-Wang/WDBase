//
//  WDBaseScrollerController.swift
//  Project
//
//  Created by wq on 2021/4/14.
//

import UIKit

class WDBaseScrollViewController: WDViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    public lazy var scrollView: UIScrollView = {
        var scrollView = UIScrollView()
        scrollView = UIScrollView(frame: kEdgeRect)
        scrollView.backgroundColor = .white
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.showsVerticalScrollIndicator = false
        scrollView.alwaysBounceVertical = true
        scrollView.alwaysBounceHorizontal = false
        scrollView.delegate = self
        if #available(iOS 11.0, *) {
            scrollView.contentInsetAdjustmentBehavior = .never
        }
        return scrollView
    }()

}

extension WDBaseScrollViewController: UIScrollViewDelegate {

    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        scrollView.endEditing(true)
    }

}
