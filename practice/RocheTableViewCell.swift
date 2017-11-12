//
//  RocheTableViewCell.swift
//  practice
//
//  Created by kidnapper on 06/11/2017.
//  Copyright © 2017 kidnapper.com. All rights reserved.
//

import UIKit

class RocheTableViewCell: UITableViewCell {

    @IBOutlet var image1: UIImageView!
    @IBOutlet var author: UILabel!
    @IBOutlet var date: UILabel!
    @IBOutlet var title: UILabel!
    
    
    var thumbnailImage: UIImage? = UIImage(named: "patient")
    var unreadIndication: UIImage? = UIImage(named: "blue_dot")
    var attributedString: NSMutableAttributedString!
    
    
    
    
    var hadRead:Bool = false {
        willSet(newValue){
            if newValue{
                attributedString = nil
                self.title.attributedText = attributedString
            }else{
                let unreadDotAttachment = NSTextAttachment()
                unreadDotAttachment.image = UIImage(cgImage: unreadIndication!.cgImage!, scale: 1, orientation: .up)
                let attrStringWithImage = NSAttributedString(attachment: unreadDotAttachment)
                attributedString = attrStringWithImage as! NSMutableAttributedString
                self.title.attributedText = attributedString
            }
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        print("awake from nib test message")
        title.numberOfLines = 0
        self.backgroundColor = UIColor.white
        image1.clipsToBounds = true
        
        
        
        
        
        //if load thumbnail image are loaded
//        if unreadIndication != nil{
//            unreadDotAttachment.image = UIImage(cgImage: unreadIndication!.cgImage!, scale: 1, orientation: .up)
//            
//        //otherwise show placeholder image
//        }else{
//            
//        }
        let unreadDotAttachment = NSTextAttachment()
        unreadDotAttachment.image = UIImage(cgImage: unreadIndication!.cgImage!, scale: 1.5, orientation: .up)
        let attrStringWithImage = NSAttributedString(attachment: unreadDotAttachment)
        attributedString = attrStringWithImage as! NSMutableAttributedString
        self.title.attributedText = attributedString

        
    }
    
//    func appendAttributedString(string: NSMutableAttributedString) -> NSMutableAttributedString

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        

        // Configure the view for the selected state
    }
    
    override var frame: CGRect{
        get{
            return super.frame
        }
        set (newFrame){
            var frame = newFrame
            frame.origin.x += 15
            frame.size.width -= 30
//            frame.origin.y += 20
//            frame.size.height -= 40
            super.frame = frame
            
        }
    }
    
    
}