//
//  RocheCategoryCell.swift
//  practice
//
//  Created by kidnapper on 14/11/2017.
//  Copyright © 2017 kidnapper.com. All rights reserved.
//
import UIKit

protocol buttonClicked: class {
    func seeAllButtonClicked()
}

class SquareCategoryCell: UICollectionViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    weak var delegate: buttonClicked?
    private let cellId = "SCVCell"
    var titleContent: String = "12345678"
    var subtitleContent: String = "87654321"
    var attributedString: NSMutableAttributedString!
    var count:Int = 0
    
    
    @IBOutlet var content: UICollectionView!
    @IBOutlet var title: UILabel!
    @IBOutlet var seeAllButton: UIButton!
    
    @IBAction func seeAllClicked(_ sender: Any){
        print("%%%%%%")
        delegate?.seeAllButtonClicked()
    }
    
//    override func awakeFromNib() {
//        super.awakeFromNib()
//    }
    override init(frame: CGRect) {
        super.init(frame: frame)

//        content.delegate = self as? UICollectionViewDelegate
//        content.dataSource = self
        setupViews()
    }
    required init?(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)
        fatalError("init(coder:) has not been implemented")
    }
    
    let contentCV: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let RCCV1 = UICollectionView(frame: .zero, collectionViewLayout: layout)
        RCCV1.backgroundColor = UIColor.brown
        RCCV1.translatesAutoresizingMaskIntoConstraints = false
        return RCCV1 
    }()
    
    func setupViews(){
        
        addSubview(contentCV)
        
        contentCV.delegate = self
        contentCV.dataSource = self
        let RCVC1 = UINib(nibName: "SquareCollectionViewCell", bundle: nil)
        contentCV.register(RCVC1, forCellWithReuseIdentifier: cellId)
        
        let top = NSLayoutConstraint(item: contentCV, attribute: .top, relatedBy: .equal, toItem: self, attribute: .top, multiplier: 1, constant: 0)
        let left = NSLayoutConstraint(item: contentCV, attribute: .left, relatedBy: .equal, toItem: self, attribute: .left, multiplier: 1, constant: 0)
        let right = NSLayoutConstraint(item: contentCV, attribute: .right, relatedBy: .equal, toItem: self, attribute: .right, multiplier: 1, constant: 0)
        let bottom = NSLayoutConstraint(item: contentCV, attribute: .bottom, relatedBy: .equal, toItem: self, attribute: .bottom, multiplier: 1, constant: 0)
//        top.isActive = true
//        left.isActive = true
//        right.isActive = true
//        bottom.isActive = true
        self.addConstraints([top, left, right, bottom])
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! SquareCollectionViewCell
        cell.thumbnail.image = UIImage(named: "thumbnail_tab")
        cell.time.text = "2 hours ago"
        cell.backgroundColor = UIColor.cyan
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 165, height: 193)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("actually here and indexPath = \(indexPath.item)")
    }
    
}


