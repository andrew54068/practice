
//
//  CollectionViewController.swift
//  practice
//
//  Created by kidnapper on 09/11/2017.
//  Copyright © 2017 kidnapper.com. All rights reserved.
//

import UIKit
import TabPageViewController

class mainViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout{
    
    private let SquareCellId = "SquareCategoryCell"
    private let BannerCellId = "BannerCategoryCell"
    private let segueId = "seeAll"
    var titleContent: String = ""
    var subtitleContent: String = ""
//    var attributedString: NSMutableAttributedString!
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
        
        setUpNavigationBar()
        
    }
    
    func setUpNavigationBar(){
        //left NavItem
//        let menuImage = UIImage(named: "icon_btn_menu_default")
//        let menu = UIBarButtonItem(image: menuImage, style: .plain, target: self, action: #selector(handleMenu))
//        navigationItem.leftBarButtonItem = menu
        
        
        //right NavItem
//        let flexible = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.flexibleSpace, target: nil, action: nil)
        //        fix.width = -3
        let searchImage = UIImage(named: "icon_btn_search_default")?.withRenderingMode(.alwaysOriginal)
        let search = UIBarButtonItem(image:  searchImage, style: .plain, target: self, action: #selector(handleSearch))
        let bookmarkImage = UIImage(named: "icon_btn_bookmark_default")?.withRenderingMode(.alwaysOriginal)
        let bookmark = UIBarButtonItem(image: bookmarkImage, style: .plain, target: self, action: #selector(handleBookmark))
        let menuImage = UIImage(named: "icon_btn_menu_default")?.withRenderingMode(.alwaysOriginal)
        let menu = UIBarButtonItem(image: menuImage, style: .plain, target: self, action: #selector(handleMenu))
//        let fix = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.fixedSpace, target: nil, action: nil)
//        fix.width = -3
        navigationItem.rightBarButtonItems = [menu, bookmark, search]
    }
    //MARK: left navigation item action
    func handleMenu(){
        print("show menu")
    }
    
    //MARK: right navigation item action
    func handleSearch(){
        print("search being called")
    }
    
    func handleBookmark(){
        print("show bookmark")
    }
    
    func seeAll(){
        let tc = TabPageViewController.create()
        let CongressUpdate = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "CongressUpdate_VC")
        let ExpertCommentary = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ExpertCommentary_VC")
        let Event = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Event_VC")
        let TrailFactSheet = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "TrailFactSheet_VC")
        let Bookmark = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Bookmark_VC")
        
        let grayColor = UIColor(red: 155/255, green: 155/255, blue: 155/255, alpha: 1)
        let attrs = [NSFontAttributeName: UIFont.systemFont(ofSize: 17), NSForegroundColorAttributeName: grayColor ]
        let CongressUpdate_text = NSMutableAttributedString(string: "Congress Update", attributes: attrs)
        let ExpertCommentary_text = NSMutableAttributedString(string: "Expert Commentary", attributes: attrs)
        let Event_text = NSMutableAttributedString(string: "Event", attributes: attrs)
        let TrailFactSheet_text = NSMutableAttributedString(string: "Trail Fact Sheet", attributes: attrs)
        
        let bookmarkAttachment = NSTextAttachment()
        let bookmarkImage = UIImage(named: "icon_btn_bookmark_default")!.withRenderingMode(.alwaysTemplate)
        bookmarkAttachment.image = bookmarkImage
        bookmarkAttachment.bounds = CGRect(x: 0, y: -2, width: 12, height: 16)
        
        let attrStringWithImage: NSAttributedString = NSAttributedString(attachment: bookmarkAttachment)
        let BookMarktext = NSMutableAttributedString(string: " Bookmark", attributes: attrs)
        let empty = NSMutableAttributedString(string: " ", attributes: attrs)
        empty.append(attrStringWithImage)
        empty.append(BookMarktext)
//        attributedString.append(BookMarktext)
        let BookMark_text = empty
        
        tc.tabItems = [(CongressUpdate, CongressUpdate_text), (ExpertCommentary, ExpertCommentary_text), (Event, Event_text), (TrailFactSheet, TrailFactSheet_text), (Bookmark, BookMark_text)]
        
        self.navigationController?.pushViewController(tc, animated: true)
//        self.performSegue(withIdentifier: "seeAll", sender: self)
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
