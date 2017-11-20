//
//  Content_TVCell.swift
//  practice
//
//  Created by kidnapper on 20/11/2017.
//  Copyright © 2017 kidnapper.com. All rights reserved.
//

import UIKit

class Content_TVCell: UITableViewCell {

    
    let test = "Teams from several countries have intensified their efforts in the South Atlantic to find the ARA San Juan submarine, which vanished on Wednesday.The US Navy has sent a second ship with special tracking equipment and deep-sea rescue modules to join the search.The vessel disappeared 430km (267 miles) off the Argentine coast.On Saturday, several satellite signals thought to have come from the sub were detected near the Valdez peninsula.A Nasa research plane was used an attempt to trace the location but was unsuccessful.Rescue teams have also been hindered by heavy winds and high waves.Teams from several countries have intensified their efforts in the South Atlantic to find the ARA San Juan submarine, which vanished on Wednesday.The US Navy has sent a second ship with special tracking equipment and deep-sea rescue modules to join the search.The vessel disappeared 430km (267 miles) off the Argentine coast.On Saturday, several satellite signals thought to have come from the sub were detected near the Valdez peninsula.A Nasa research plane was used an attempt to trace the location but was unsuccessful.Rescue teams have also been hindered by heavy winds and high waves.Teams from several countries have intensified their efforts in the South Atlantic to find the ARA San Juan submarine, which vanished on Wednesday.The US Navy has sent a second ship with special tracking equipment and deep-sea rescue modules to join the search.The vessel disappeared 430km (267 miles) off the Argentine coast.On Saturday, several satellite signals thought to have come from the sub were detected near the Valdez peninsula.A Nasa research plane was used an attempt to trace the location but was unsuccessful.Rescue teams have also been hindered by heavy winds and high waves."
    
    @IBOutlet var contentLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code

        contentLabel.backgroundColor = UIColor.red
        contentLabel.text = test
        contentLabel.numberOfLines = 0
        contentLabel.lineBreakMode = .byWordWrapping
        
//        contentLabel.sizeToFit()
        
//        contentLabel.frame = CGRect(x: 15, y: 10, width: self.frame.width - 30, height: contentLabel.frame.height)
        print("123")
        
    }
    
//    var contentLabel: UILabel = {
//        let lb = UILabel()
//        lb.text = " Teams from several countries have intensified their efforts in the South Atlantic to find the ARA San Juan submarine, which vanished on Wednesday.The US Navy has sent a second ship with special tracking equipment and deep-sea rescue modules to join the search.The vessel disappeared 430km (267 miles) off the Argentine coast.On Saturday, several satellite signals thought to have come from the sub were detected near the Valdez peninsula.A Nasa research plane was used an attempt to trace the location but was unsuccessful.Rescue teams have also been hindered by heavy winds and high waves."
//        return lb
//    }()

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
