//
//  Search_VC.swift
//  practice
//
//  Created by kidnapper on 29/11/2017.
//  Copyright © 2017 kidnapper.com. All rights reserved.
//

import UIKit

class Search_VC: UIViewController {
    
    
    @IBOutlet var searchView: UIView!
    
    @IBOutlet var tabBarView: UIView!
    
    @IBOutlet var tableView: UITableView!
    
    var articles: [[String:AnyObject]]!
    var foundArticles: [[String:AnyObject]]!
    var selectedArticle: [String:AnyObject]!
    
    var resultController: UITableViewController!
    var searchController: UISearchController!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.backgroundColor = UIColor.red
        self.navigationController?.isNavigationBarHidden = true
//        self.view.backgroundColor = UIColor.blue
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
