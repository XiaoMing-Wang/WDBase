//
//  WDViewController.swift
//  Project
//
//  Created by wq on 2021/4/14.
//

import UIKit

class WDBaseViewController: UIViewController {

    /** 是否正在做转场切换  */
    fileprivate(set) var transitions: Bool = false

    /** 控制器第一次1s加载完成 */
    fileprivate(set) var loaded: Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()
        self.initializeSameConfiguration()
        self.personalizedConfiguration()
    }

    /** 通用设置 */
    func initializeSameConfiguration() {
                
    }
    
    /** 个性化设置 */
    func personalizedConfiguration() {
        
    }
        
    /** 导航黑白模式 重载这两个都可以 */
    func statusBarStyle() -> UIStatusBarStyle {
        return .default
    }

    /** 导航黑白模式 重载这两个都可以 */
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return statusBarStyle()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        transitions = true
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        transitions = false
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            self.loaded = true
        }
    }

}
