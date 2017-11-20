//
//  Reference_TVCell.swift
//  practice
//
//  Created by kidnapper on 20/11/2017.
//  Copyright © 2017 kidnapper.com. All rights reserved.
//

import UIKit

class Reference_TVCell: UITableViewCell {

    
    @IBOutlet var ReferenceContent: UILabel!
    
    @IBOutlet var schedule: UIButton!
    
    @IBOutlet var reminder: UIButton!
    
    
    @IBAction func addToSchedule(_ sender: Any) {
    }
    
    @IBAction func AddReminder(_ sender: Any) {
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        schedule.imageView?.contentMode = .scaleAspectFit
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
