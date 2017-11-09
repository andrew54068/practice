//
//  ViewController.swift
//  practice
//
//  Created by kidnapper on 06/11/2017.
//  Copyright © 2017 kidnapper.com. All rights reserved.
//

import UIKit
import TabPageViewController

class ViewController: UIViewController {
//    var sections:Int = 2
//    var myMoney:Int {
//        get {
//            return self.sections + 13
//        }
//        set {
//            print("myMoney")
//            
//        }
//    }
//    var isRead:Bool = false {
//        willSet(value) {
//            if value == true{
//                print("willSet value isRead =", isRead)
//                print("value = ", value)
//            }
//            else{
//                print("willSet value isRead2 =", isRead)
//                print("value2 = ", value)
//            }
//        }
//        
//        didSet(value) {
//            if value == true {
//                print("isRead = ", isRead)
//                print("value = ", value)
//            }
//            else {
//                print("is Read2 = ", isRead)
//                print("value2 = ", value)
//            }
//            
//        }
//    }
    override func viewDidAppear(_ animated: Bool) {
        let tc = TabPageViewController.create()
        let vc1 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "vc1")
        let vc2 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "vc2")
        let vc3 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "vc3")
        
        let logo = UIImage(named: "Roche_logo")
        let logoView = UIImageView(image: logo)
        navigationItem.titleView = logoView
        
        tc.tabItems = [(vc1, "First"), (vc2, "Second"), (vc3, "Third")]
        var option = TabPageOption()
        option.tabWidth = view.frame.width / CGFloat(tc.tabItems.count)
        option.hidesTopViewOnSwipeType = .all
        tc.option = option
//        tc.view.frame = CGRect(x: 20, y: 44, width: tc.view.frame.width, height: tc.view.frame.height - 44)
//        tc.viewWillLayoutSubviews()
//        tc.view.setNeedsLayout()
//        tc.view.layoutIfNeeded()
        present(tc, animated: false, completion: nil)
        print("succeed")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        tableView.delegate = self
//        tableView.dataSource = self
//        tableView.backgroundColor = UIColor.brown
//        tableView.separatorColor = UIColor.gray
        
        
        
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//        
//        
//    }
    
//    //MARK:- tableView delegate
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 3
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//        
//        cell.layer.backgroundColor = UIColor.green.cgColor
//        cell.backgroundColor = UIColor.blue
//        cell.separatorInset = UIEdgeInsets(top: 20, left: 15, bottom: 20, right: 15)
//        return cell
//    }
//    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        
//        return 278
//    }

    
}

