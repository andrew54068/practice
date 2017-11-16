//
//  CollectionViewController.swift
//  practice
//
//  Created by kidnapper on 09/11/2017.
//  Copyright © 2017 kidnapper.com. All rights reserved.
//

import UIKit



class mainViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout, buttonClicked {
    


    private let collectionView1 = "collectionView1"
    private let collectionView2 = "collectionView2"
    private let cellId1 = "categoryCell1"
    private let cellId2 = "categoryCell2"
    private let segueId = "seeAll"
    var titleContent: String = ""
    var subtitleContent: String = ""
    var attributedString: NSMutableAttributedString!
    var count:Int = 0
    var numberOfRowBeforeSqueezedRectangle:Int = 2
    
    
    func seeAllButtonClicked(){
        print("buttom has been pushed")
        self.performSegue(withIdentifier: segueId, sender: nil)
    }
    
//        let tc = TabPageViewController.create()
//        let vc1 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "vc1")
//        let vc2 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "vc2")
//        
//        tc.tabItems = [(vc1, "我現在要測"), (vc2, "我現無敵宇宙長的section我現無敵宇宙長的section")]
//        
//        var option = TabPageOption()
//        option.hidesTopViewOnSwipeType = .all
//        tc.option = option
//        present(tc, animated: false, completion: nil)
//    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        RocheCategoryCell1.Instance.delegate = self
        
        collectionView?.delegate = self
        collectionView?.dataSource = self
        
//        let nib1 = UINib(nibName: "RocheCategoryCell1", bundle: nil)
        let nib2 = UINib(nibName: "RocheCategoryCell2", bundle: nil)

//        collectionView!.register(nib1, forCellWithReuseIdentifier: cellId1)
        collectionView!.register(nib2, forCellWithReuseIdentifier: cellId2)
        collectionView!.isUserInteractionEnabled = true
        
        collectionView!.register(RocheCategoryCell1.self, forCellWithReuseIdentifier: cellId1)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

//    override func numberOfSections(in collectionView: UICollectionView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return
//    }
//    collectionViewcellforforkind


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 3
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        if indexPath.row < numberOfRowBeforeSqueezedRectangle{
            let cell1 = collectionView.dequeueReusableCell(withReuseIdentifier: cellId1, for: indexPath) as! RocheCategoryCell1
            //?? as as!
            
//            cell1.title.text = "123"
            cell1.delegate = self
//            cell1.seeAllButton.addTarget(self, action: "seeAllButtonClicked", for: .touchUpInside)
//            collectionView.register(RocheCategoryCollectionView1.self, forCellWithReuseIdentifier: collectionView1)
            
//            cell1.content = RocheCategoryCollectionView1(frame: cell1.content.frame, collectionViewLayout: UICollectionViewLayout())
            return cell1
//        }else{
//            let cell2 = collectionView.dequeueReusableCell(withReuseIdentifier: cellId2, for: indexPath) as! RocheCategoryCell2
//            let nibRCCV2 = UINib(nibName: "RocheCategoryCollectionView2", bundle: nil)
//            collectionView.register(nibRCCV2, forCellWithReuseIdentifier: collectionView2)
//            
//            return cell2
//        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        if indexPath.row > numberOfRowBeforeSqueezedRectangle - 1{
            return CGSize(width: self.view.frame.width, height: 253)
//        }else{
//            return CGSize(width: self.view.frame.width, height: 253)
//        }
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("select")
    }
    
    
//    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        let tc = TabPageViewController.create()
//        let vc1 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "vc1")
//        let vc2 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "vc2")
//        let vc3 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "vc3")
//        
//        //        let logo = UIImage(named: "Roche_logo")
//        //        let logoView = UIImageView(image: logo)
//        //        navigationItem.titleView = logoView
//        
//        tc.tabItems = [(vc1, "我現在要測試一個超級長的section"), (vc2, "我現在要測試一個超級長的section"), (vc3, "我現在要測試一個超級長的section")]
//        present(tc, animated: true, completion: nil)
//    }
    
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
//        
//    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */
//    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        titleContent = "A future in mind - rising to the challenge in Alzheimer's"
//        subtitleContent = "Doretha Burrell-nickname “Dee” by children at the school where she once worked as administrative, Doretha Burrell-nickname “Dee” by children at the school where she once worked as administrative"
//        count += 1
//        collectionView.reloadData()
//    }

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }*/

//    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
//        
//    
//    }
 

}
