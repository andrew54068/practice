//
//  TableViewController.swift
//  practice
//
//  Created by kidnapper on 07/11/2017.
//  Copyright © 2017 kidnapper.com. All rights reserved.
//

import UIKit
import TabPageViewController

class CongressUpdate_VC: UITableViewController {

    
//    @IBOutlet var tableView: UITableView!
//    var hight: CGFloat = 40
    private let cellId = "RTVCell"
    private let selectionId = "selection"
    private let pickerId = "pick"
    
    var thumbnailImage: UIImage?
    var titleContent: String = ""
    var subtitleContent: String = ""
    var attributedString: NSMutableAttributedString!
    var unreadIndication: UIImage? = UIImage(named: "unread")
    var count:Int = 0
    var selectedFilter: Int?
    var selectedtext: String?
    
    var selectionView: selectionView!
    var pickerView: pickerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let nib = UINib(nibName: "TableViewCell", bundle: nil)
        tableView.register(nib
            , forCellReuseIdentifier: cellId)
        
        let logo = UIImage(named: "Roche_logo")
        let logoView = UIImageView(image: logo)
        navigationItem.titleView = logoView

        selectionSetup()
        tableViewSetup()
        pickerViewSetup()
    }
    
    func tableViewSetup(){
        tableView.contentInset = UIEdgeInsetsMake(81, 0, 0, 0)
        tableView.separatorInset = UIEdgeInsets.zero
        tableView.estimatedRowHeight = 318
        tableView.scrollIndicatorInsets = UIEdgeInsets(top: 101, left: 0, bottom: 0, right: 0)
        tableView.tableHeaderView = selectionView
    }
    
    func selectionSetup(){
        let selectionNib = UINib(nibName: "selectionView", bundle: nil)
        selectionView = selectionNib.instantiate(withOwner: self, options: nil).first as! selectionView
        selectionView.left.backgroundColor = UIColor.lightGray.withAlphaComponent(0.3)
        selectionView.right.backgroundColor = UIColor.lightGray.withAlphaComponent(0.3)
    }
    
    func pickerViewSetup(){
        let pickerViewNib = UINib(nibName: "pickerView", bundle: nil)
        pickerView = pickerViewNib.instantiate(withOwner: self, options: nil).first as! pickerView
        
        let flexible = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.flexibleSpace, target: nil, action: nil)
        let item = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(comfirmSelection(sender:)))
        let fix = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.fixedSpace, target: nil, action: nil)
        fix.width = 9
        pickerView.toolbar.setItems([flexible, item, fix], animated: true)
        
        selectionView.left.tag = kindOfPickerView.congress.rawValue
        selectionView.left.addTarget(self, action: #selector(CategoryPicked), for: .touchUpInside)
        selectionView.right.tag = kindOfPickerView.disease.rawValue
        selectionView.right.addTarget(self, action: #selector(CategoryPicked), for: .touchUpInside)
    }
    
    func CategoryPicked(sender: UIButton){
        let window = UIApplication.shared.keyWindow!
        window.addSubview(unfocus)
        unfocus.frame = CGRect(x: 0, y: 0, width: tableView.frame.width, height: tableView.frame.height)
        unfocus.addTarget(self, action: #selector(dismissUnfocus), for: .touchUpInside)
        pickerView.frame = CGRect(x: 0, y: window.bounds.maxY - 261, width: tableView.frame.width, height: 261)
        unfocus.addSubview(pickerView)
        selectedtext = showPickerView(PickerView: pickerView, selectionView: selectionView, selected: sender.tag)
        
    }
    let unfocus:UIButton = {
        let View = UIButton()
        View.backgroundColor = UIColor.gray.withAlphaComponent(0.5)
        return View
    }()
    
    func comfirmSelection(sender: UIBarButtonItem){
        dismissUnfocus(sender: sender)
        if selectedFilter == 1{
            selectionView.left.titleLabel?.text = selectedtext!
        }
        else{
            selectionView.right.titleLabel?.text = selectedtext!
        }
    }
    
    func dismissUnfocus(sender: Any) {
        unfocus.removeFromSuperview()
        tableView.isScrollEnabled = true
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
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 5
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! TableViewCell
        
        if count > 1{
            cell.hadRead = true
        }
        
        let attrs1 = [NSFontAttributeName: UIFont.systemFont(ofSize: 15, weight: UIFontWeightBold), NSForegroundColorAttributeName: UIColor.black]
        let attrs2 = [NSFontAttributeName: UIFont.systemFont(ofSize: 13), NSForegroundColorAttributeName: UIColor.gray]
        let attributedString1 = NSMutableAttributedString(string: "\(titleContent)", attributes: attrs1)
        let attributedString2 = NSMutableAttributedString(string: "\(subtitleContent)", attributes: attrs2)
        let line_feed = NSMutableAttributedString(string: "\n")
        if subtitleContent != ""{
            attributedString1.append(line_feed)
        }
        attributedString1.append(attributedString2)
        
//        let unreadDotAttachment = NSTextAttachment()
//        unreadDotAttachment.image = UIImage(cgImage: unreadIndication!.cgImage!, scale: 1, orientation: .up)
//        let attrStringWithImage = NSAttributedString(attachment: unreadDotAttachment)
//        attributedString = attrStringWithImage as! NSMutableAttributedString
//        attributedString.append(attributedString1)
//        print("cell local attri = \(attributedString!)")
        
        if cell.attributedString == nil{
            cell.attributedString = attributedString1
            print("cell attri = nil : \(cell.attributedString!)")
        }else{
            cell.attributedString.append(attributedString1)
            print("cell attri != nil : \(cell.attributedString!)")
        }
//        print(cell.attributedString!)
        cell.title.attributedText = cell.attributedString!
        cell.title.numberOfLines = 4
        cell.title.lineBreakMode = .byTruncatingTail
        
        if thumbnailImage != nil{
            cell.image1.image = thumbnailImage!
        }
        
        cell.selectionStyle = .none


        print("123")
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        print("active")
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! RocheTableViewCell
        
        return 318
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if !tableView.isScrollEnabled{
            pickerView.removeFromSuperview()
            tableView.isScrollEnabled = true
        }
        titleContent = " A future in mind - rising to the challenge in Alzheimer's"
        subtitleContent = "Doretha Burrell-nickname “Dee” by children at the school where she once worked as administrative, Doretha Burrell-nickname “Dee” by children at the school where she once worked as administrative"
        thumbnailImage = UIImage(named: "thumbnail_tab")
        
        count += 1
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
