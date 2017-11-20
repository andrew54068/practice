//
//  RocheCollectionViewCell2.swift
//  practice
//
//  Created by kidnapper on 15/11/2017.
//  Copyright © 2017 kidnapper.com. All rights reserved.
//

import UIKit

class BannerCollectionViewCell: UICollectionViewCell {

    @IBOutlet var rectangleButtom: UIButton!
    @IBOutlet var rectangleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        rectangleButtom.imageView?.layer.cornerRadius = 10
        rectangleButtom.imageView?.clipsToBounds = true
    }

}
