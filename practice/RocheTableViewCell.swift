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
    
    @IBOutlet var tittle: UILabel!
    
    var titleContent: String = ""
    var subtittleContent: String = ""
    var thumbnailImage: UIImage? = UIImage(named: "patient")
    var unreadIndication: UIImage? = UIImage(named: "blue_dot")
    
    
    var hadRead:Bool = false {
        didSet (newValue){
            if newValue{
                self.
            }else{
                
            }
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        print("awake from nib test message")
        tittle.numberOfLines = 0
        self.backgroundColor = UIColor.white
        image1.clipsToBounds = true
        
        let unreadDotAttachment = NSTextAttachment()
        var attributedString: NSMutableAttributedString!
        unreadDotAttachment.image = UIImage(cgImage: image.cgImage!, scale: 1, orientation: .up)
        let attrStringWithImage = NSAttributedString(attachment: unreadDotAttachment)
        attributedString.append(attrStringWithImage)
        attributedString.append(attributedString1)
        self.tittle.attributedText = attributedString
        
        
    }

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
