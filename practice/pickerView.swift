//
//  pickerView.swift
//  practice
//
//  Created by kidnapper on 21/11/2017.
//  Copyright © 2017 kidnapper.com. All rights reserved.
//

import UIKit

class pickerView: UIView, UIPickerViewDataSource, UIPickerViewDelegate {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    var numberOfRow: Int = 0
    
    var selected: Int = 0
    var result: [String] = ["All", "All"]
    
    
    
    var selectionForCongress = [["All", "one", "two", "three"],["All", "ㄅ", "ㄆ", "ㄇ"]]
    var selectionForDisease = ["All", "a", "b", "c", "d"]
    var selectionForStage = ["All", "1", "2", "3", "4"]
    
    @IBOutlet var toolbar: UIToolbar!
    
    @IBOutlet var pickerView: UIPickerView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        pickerView.dataSource = self
        pickerView.delegate = self
//        self.item = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(CongressUpdate_VC.comfirmSelection))
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        switch selected {
        case 1:
            return 2
        case 2:
            return 1
        default :
            return 1
        }
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch selected {
        case 1:
            return selectionForCongress[component].count
        case 2:
            return selectionForDisease.count
        case 3:
            return selectionForStage.count
        default :
            return 0
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch selected {
        case 1:
            return selectionForCongress[component][row]
        case 2:
            return selectionForDisease[row]
        default :
            return selectionForStage[row]
        }
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch selected {
        case 1:
            if component == 0{
                result[0] = selectionForCongress[component][row]
            }else if component == 1{
                result[1] = selectionForCongress[component][row]
            }
        case 2:
            result = [selectionForDisease[row]]
        default :
            result = [selectionForStage[row]]
        }
    }
//    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
//        <#code#>
//    }
    

}
