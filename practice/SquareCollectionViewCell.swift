//
//  RocheCollectionViewCell.swift
//  practice
//
//  Created by kidnapper on 09/11/2017.
//  Copyright © 2017 kidnapper.com. All rights reserved.
//

import UIKit
import TabPageViewController

class RocheCollectionViewCell1: UICollectionViewCell {
    
    @IBOutlet var thumbnail: UIImageView!
    @IBOutlet var patient: UILabel!
    @IBOutlet var time: UILabel!
    @IBOutlet var title: UILabel!
    
    
    var unreadIndication: UIImage? = UIImage(named: "unread")
    var attributedString: NSMutableAttributedString!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
//        self.thumbnail.image = UIImage(named: "no_image")
//        self.patient.text = "no patient yet"
//        self.time.text = "no time yet"
//        self.title.text = "no title yet"
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
//        fatalError("init(coder:) has not been implemented")
    }
    
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
        translatesAutoresizingMaskIntoConstraints = false
        
        let unreadDotAttachment = NSTextAttachment()
        unreadDotAttachment.image = UIImage(cgImage: unreadIndication!.cgImage!, scale: 7, orientation: .up)
        let attrStringWithImage = NSAttributedString(attachment: unreadDotAttachment)
        attributedString = attrStringWithImage as! NSMutableAttributedString
        self.title.attributedText = attributedString
    }
    
    

}
