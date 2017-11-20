
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
    
    @IBOutlet var navigationBar: NavigationBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView?.delegate = self
        collectionView?.dataSource = self
        let SquareNib = UINib(nibName: "SquareCategoryCell", bundle: nil)
        collectionView!.register(SquareNib, forCellWithReuseIdentifier: SquareCellId)
        
        let BannerNib = UINib(nibName: "BannerCategoryCell", bundle: nil)
        collectionView!.register(BannerNib, forCellWithReuseIdentifier: BannerCellId)
        
        //wait for angie
        /*let logo = UIImage(named: "Roche_logo")
        let imageView = UIImageView(image:logo)
        self.navigationItem.titleView = imageView*/
        
//        self.navigationItem.title = "Roche"
//        self.navigationBar.barStyle = UIBarStyle.default
//        self.navigationBar.tintColor = UIColor.red
        
        let Nav = NavigationBar()
        self.navigationBar = Nav
        
    }
    
    func seeAll(){
        self.performSegue(withIdentifier: "seeAll", sender: self)
    }

    //MARK: CollectionView dataSource
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 3
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.item < numberOfRowBeforeSqueezedRectangle{
            let SquareCell = collectionView.dequeueReusableCell(withReuseIdentifier: SquareCellId, for: indexPath) as! SquareCategoryCell
                //?? as as!
            SquareCell.seeAll.addTarget(self, action: #selector(seeAll), for: .touchUpInside)
                
            return SquareCell
        }else{
            let BannerCell = collectionView.dequeueReusableCell(withReuseIdentifier: BannerCellId, for: indexPath) as! BannerCategoryCell
            return BannerCell
        }
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
        if indexPath.item < numberOfRowBeforeSqueezedRectangle{
            return CGSize(width: self.view.frame.width, height: 253)
        }else{
            return CGSize(width: self.view.frame.width, height: 135)
        }
        
    }
}
