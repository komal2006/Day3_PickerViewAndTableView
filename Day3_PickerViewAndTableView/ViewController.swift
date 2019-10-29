//
//  ViewController.swift
//  Day3_PickerViewAndTableView
//
//  Created by MacStudent on 2019-10-29.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource
{
    
//    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
//    {
//       return 1
//    }

    @IBOutlet weak var pickerCountries: UIPickerView!
    let countries = ["India","Canada", "United States Of America", "Russia", "Sri Lanka", "China", "Pakistan", "Mexico"]
    
    
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        self.pickerCountries.delegate = self
         self.pickerCountries.dataSource = self
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) ->Int{
        return self.countries.count
    }
    
    func pickerView(_pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        print("TITLE")
        return self.countries[row]
    }
    func pickerView(_pickerView: UIPickerView, didSelectRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView
    {
        
        let myview = UIView(frame: CGRect(x: 0, y: 0, width: pickerView.bounds.width - 30, height: 60))
    }
    func pickerView(_ pickerView: UIPickerView, viewForRow component: Int) -> CGFloat {
        <#code#>
    }
    


}

