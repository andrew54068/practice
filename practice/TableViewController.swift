//
//  TableViewController.swift
//  practice
//
//  Created by kidnapper on 07/11/2017.
//  Copyright © 2017 kidnapper.com. All rights reserved.
//

import UIKit
import TabPageViewController

class TableViewController: UITableViewController {

    
//    @IBOutlet var tableView: UITableView!
//    var hight: CGFloat = 40
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let nib = UINib(nibName: "RocheTableViewCell", bundle: nil)
        tableView.register(nib
            , forCellReuseIdentifier: "cell")
        print("here1")
//        tableView.backgroundColor = UIColor.red
//        tableView.rowHeight = 40
//        tableView.cellLayoutMarginsFollowReadableWidth = false
//        tableView.separatorStyle = .singleLine
        tableView.contentInset = UIEdgeInsetsMake(98, 0, 0, 0)
        tableView.separatorInset = UIEdgeInsets.zero
        tableView.estimatedRowHeight = 318
        tableView.scrollIndicatorInsets = UIEdgeInsets(top: 109, left: 0, bottom: 0, right: 0)
        
        
//        tableView.rowHeight = UITableViewAutomaticDimension
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

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
    

    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {

        print("tableView willDisplay cell")
    }
    
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 5
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! RocheTableViewCell
        
        
        
        let attrs1 = [NSFontAttributeName: UIFont.systemFont(ofSize: 16, weight: UIFontWeightBold), NSForegroundColorAttributeName: UIColor.black]
        let attrs2 = [NSFontAttributeName: UIFont.systemFont(ofSize: 13), NSForegroundColorAttributeName: UIColor.gray]
        let attributedString1 = NSMutableAttributedString(string: "\(titleContent)", attributes: attrs1)
        let attributedString2 = NSMutableAttributedString(string: "\(subtittleContent)", attributes: attrs2)
        let line_feed = NSMutableAttributedString(string: "\n")
        attributedString1.append(line_feed)
        attributedString1.append(attributedString2)
        cell.tittle.attributedText = attributedString1
        cell.tittle.numberOfLines = 4
        
        if let image = thumbnailImage{
            let unreadDotAttachment = NSTextAttachment()
            var attributedString: NSMutableAttributedString!
            unreadDotAttachment.image = UIImage(cgImage: image.cgImage!, scale: 1, orientation: .up)
            let attrStringWithImage = NSAttributedString(attachment: unreadDotAttachment)
            attributedString.append(attrStringWithImage)
            attributedString.append(attributedString1)
            cell.tittle.attributedText = attributedString
            
        }else{
            cell.tittle.attributedText = attributedString1
        }
//        cell.frame = CGRect(x: 0, y: 0, width: tableView.frame.width-30, height: cell.frame.height)

        print("123")
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        print("active")
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! RocheTableViewCell
        
        return 318
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        titleContent = "A future in mind - rising to the challenge in Alzheimer's"
        subtittleContent = "Doretha Burrell-nickname “Dee” by children at the school where she once worked as administrative, Doretha Burrell-nickname “Dee” by children at the school where she once worked as administrative"
        
        tableView.reloadData()
    }
    
    
    

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
