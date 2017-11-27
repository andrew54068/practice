//
//  Article_TVC.swift
//  practice
//
//  Created by kidnapper on 20/11/2017.
//  Copyright © 2017 kidnapper.com. All rights reserved.
//

import UIKit



class Article_TVC: UITableViewController {
    
    let titleContent = "A future in mind - rising to the challenge of Alzheimer's"
    let timeContent = "2017.11.21"
    let catagoryContent = "Event/Alzheimer's"

    private let ThumbnailHeaderCellId = "ThumbnailHeaderCell"
    private let ContentCellId = "ContentCell"
    private let QuizCellId = "QuizCell"
    private let ReferenceCellId = "ReferenceCell"
    private let MayLikeCellId = "MayLikeCell"
    
    @IBOutlet var ThumbnailHeaderView: UIView!
    
    @IBOutlet var articleTitle: UILabel!
    
    @IBOutlet var time: UIButton!
    
    @IBOutlet var catagory: UIButton!
    
    @IBAction func backToPreviousView(_ sender: Any) {
        navigationController?.popViewController(animated: true)
        navigationController?.isNavigationBarHidden = false
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        (UIApplication.shared.value(forKey: "statusBar") as? UIView)?.backgroundColor = UIColor.white
        UIApplication.shared.statusBarStyle = .default
//        (UIApplication.shared.value(forKey: "statusBar") as? UIView)?.type
//        UIApplication.shared.statusBarView?.backgroundColor = UIColor.green
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        let ThumbnailHeaderNib = UINib(nibName: "ThumbnailHeader_TVCell", bundle: nil)
        tableView.register(ThumbnailHeaderNib, forCellReuseIdentifier: ThumbnailHeaderCellId)
        
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
        tableView.tableHeaderView = ThumbnailHeaderView
        contentSetup()
        navigationController?.isNavigationBarHidden = true
    }
    
    func contentSetup(){
        articleTitle.text = titleContent
        time.setTitle(timeContent, for: .normal)
        time.imageView?.contentMode = .scaleAspectFit
        time.sizeToFit()
        catagory.setTitle(catagoryContent, for: .normal)
        catagory.imageView?.contentMode = .scaleAspectFit
        catagory.sizeToFit()
        
    }
    
    let statusBarBackgroundView: UIView = {
        let view = UIView()
        return view
    }()

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
        return 4
    }

    //MARK: TableView dataSource
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.item == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: ContentCellId, for: indexPath) as! Content_TVCell
            cell.selectionStyle = .none
            return cell
        }
        else if indexPath.item == 1{
            let cell = tableView.dequeueReusableCell(withIdentifier: QuizCellId, for: indexPath) as! Quiz_TVCell
            cell.selectionStyle = .none
            return cell
        }
        else if indexPath.item == 2{
            let cell = tableView.dequeueReusableCell(withIdentifier: ReferenceCellId, for: indexPath) as! Reference_TVCell
            cell.selectionStyle = .none
            return cell
        }
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: MayLikeCellId, for: indexPath) as! MayLike_TVCell
            cell.selectionStyle = .none
            return cell
        }
    }
    
    //MARK: tableView delegate
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.item == 3{
            //!@#$
            return 330
        }else {
            tableView.estimatedRowHeight = 400
            return tableView.estimatedRowHeight
        }
    }
    
        /*override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
            if section == 0{
                let header = tableView.dequeueReusableCell(withIdentifier: ThumbnailHeaderCellId) as! ThumbnailHeader_TVCell
                return header
            }
            else{
                return nil
            }
        }
    
        override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
            return 300
        }*/

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
