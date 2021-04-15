//
//  WDBaseCollectionController.swift
//  Project
//
//  Created by wq on 2021/4/14.
//

import UIKit

class WDBaseCollectionViewController: WDBaseViewController {

    public var dataSource: [Any] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(collectionView)
    }
    
    /**< 行数 */
    func itemCount() -> Int {
        return 1
    }
    
    /**< 行间隔 */
    func itemMargin() -> CGFloat {
        return 10
    }

    /**< 滚动方向 */
    func itemDirection() -> UICollectionView.ScrollDirection {
        return.vertical
    }
    
    /**< 宽高比 */
    func itemAspectRatio() -> CGFloat {
        return 1.0
    }

    public lazy var collectionView: UICollectionView = {
        let count = itemCount()
        let margin = itemMargin()
        let width = (kSWidth - CGFloat(margin) * CGFloat(count + 1)) / CGFloat(count)
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = itemDirection()
        layout.itemSize = CGSize(width: width, height: width * itemAspectRatio())
        layout.sectionInset = UIEdgeInsets(top: margin, left: margin, bottom: margin, right: margin)
        layout.minimumLineSpacing = margin
        layout.minimumInteritemSpacing = margin

        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.backgroundColor = .white
        collection.showsHorizontalScrollIndicator = false
        collection.bounces = true
        collection.alwaysBounceVertical = true
        collection.delegate = self
        collection.dataSource = self
        collection.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "defcell")
        if #available(iOS 11.0, *) {
            collection.contentInsetAdjustmentBehavior = .never
        }
        return collection
    }()

}

extension WDBaseCollectionViewController: UICollectionViewDataSource, UICollectionViewDelegate {

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSource.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "defcell", for: indexPath)
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        scrollView.endEditing(true)
    }
    
    
}
