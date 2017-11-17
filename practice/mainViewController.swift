
//
//  CollectionViewController.swift
//  practice
//
//  Created by kidnapper on 09/11/2017.
//  Copyright © 2017 kidnapper.com. All rights reserved.
//

import UIKit

class mainViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout{
    
    private let SquareCellId = "SquareCategoryCell"
    private let BannerCellId = "BannerCategoryCell"
    private let segueId = "seeAll"
    var titleContent: String = ""
    var subtitleContent: String = ""
    var attributedString: NSMutableAttributedString!
    var count:Int = 0
    var numberOfRowBeforeSqueezedRectangle:Int = 2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView?.delegate = self
        collectionView?.dataSource = self
        let SquareNib = UINib(nibName: "SquareCategoryCell", bundle: nil)
        collectionView!.register(SquareNib, forCellWithReuseIdentifier: SquareCellId)
        
//      let BannerNib = UINib(nibName: "BannerCategoryCell", bundle: nil)
//      collectionView!.register(BannerNib, forCellWithReuseIdentifier: BannerCellId)
    }

    //MARK: CollectionView dataSource
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 3
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cell1 = collectionView.dequeueReusableCell(withReuseIdentifier: SquareCellId, for: indexPath) as! SquareCategoryCell
            //?? as as!
        print("indexPath.row = \(indexPath.row)")
        print("indexPath.item = \(indexPath.item)")
            
        return cell1
    }
    
    
    
    //MARK: CollectionView delegate
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("select")
    }
    
    //MARK: CollectionView delegateFlowLayout
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 14, left: 0, bottom: 0, right: 0)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width, height: 253)
    }
}
