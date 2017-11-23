//
//  extension.swift
//  practice
//
//  Created by kidnapper on 21/11/2017.
//  Copyright © 2017 kidnapper.com. All rights reserved.
//

import Foundation
import UIKit



extension UITableViewController{
    
    func showPickerView(PickerView: pickerView, selectionView: selectionView, selected: Int) -> String{
        
        switch selected {
        case kindOfPickerView.congress.rawValue:
            PickerView.selected = kindOfPickerView.congress.rawValue
            PickerView.pickerView.reloadAllComponents()
            break
        case kindOfPickerView.disease.rawValue:
            PickerView.selected = kindOfPickerView.disease.rawValue
            PickerView.pickerView.reloadAllComponents()
            break
        default:
            PickerView.selected = kindOfPickerView.stage.rawValue
            PickerView.pickerView.reloadAllComponents()
            break
        }
        
        tableView.isScrollEnabled = false
        return PickerView.result
    }
}




enum kindOfPickerView: Int {
    case congress = 1
    case disease = 2
    case stage = 3
    
}

