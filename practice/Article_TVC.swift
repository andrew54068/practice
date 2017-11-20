//
//  Article_TVC.swift
//  practice
//
//  Created by kidnapper on 20/11/2017.
//  Copyright © 2017 kidnapper.com. All rights reserved.
//

import UIKit

class Article_TVC: UITableViewController {

    
    private let ThumbnailCellId = "thumbnailCell"
    private let ContentCellId = "contentCell"
    private let QuizCellId = "QuizCell"
    private let ReferenceCellId = "ReferenceCell"
    private let MayLikeCellId = "MayLikeCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        let thumbnailNib = UINib(nibName: "Thumbnail_TVCell", bundle: nil)
        tableView.register(thumbnailNib, forCellReuseIdentifier: ThumbnailCellId)
        let ContentNib = UINib(nibName: "Content_TVCell", bundle: nil)
        tableView.register(ContentNib, forCellReuseIdentifier: ContentCellId)
        let QuizNib = UINib(nibName: "Quiz_TVCell", bundle: nil)
        tableView.register(QuizNib, forCellReuseIdentifier: QuizCellId)
        let ReferenceNib = UINib(nibName: "Reference_TVCell", bundle: nil)
        tableView.register(ReferenceNib, forCellReuseIdentifier: ReferenceCellId)
        let MayLikeNib = UINib(nibName: "MayLike_TVCell", bundle: nil)
        tableView.register(MayLikeNib, forCellReuseIdentifier: MayLikeCellId)
        
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 300
        
        tableView.separatorStyle = .none
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 5
    }

    //MARK: TableView dataSource
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.item == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: ThumbnailCellId, for: indexPath) as! Thumbnail_TVCell
            // Configure the cell...
            cell.selectionStyle = .none
            return cell
        }
        else if indexPath.item == 1{
            let cell = tableView.dequeueReusableCell(withIdentifier: ContentCellId, for: indexPath) as! Content_TVCell
            return cell
        }
        else if indexPath.item == 2{
            let cell = tableView.dequeueReusableCell(withIdentifier: QuizCellId, for: indexPath) as! Quiz_TVCell
            return cell
        }
        else if indexPath.item == 3{
            let cell = tableView.dequeueReusableCell(withIdentifier: ReferenceCellId, for: indexPath) as! Reference_TVCell
            return cell
        }
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: MayLikeCellId, for: indexPath) as! MayLike_TVCell
            return cell
        }
    }
    
//    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        if indexPath.item == 0{
//            return 300
//        }else if indexPath.item == 4{
//            return 272
//        }else {
//            
//        }
//    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
