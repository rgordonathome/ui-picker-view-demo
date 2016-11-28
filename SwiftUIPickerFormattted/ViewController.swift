//
//  ViewController.swift
//  SwiftUIPickerFormattted
//
//  Created by Russell Gordon on 11/28/16.
//  Copyright © 2016 Russell Gordon. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myPicker: UIPickerView!
    
    // This is the array that we use to populate the picker view
    let pickerData = ["Mozzarella","Gorgonzola","Provolone","Brie","Maytag Blue","Sharp Cheddar","Monterrey Jack","Stilton","Gouda","Goat Cheese", "Asiago"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // UIPickerView objects need a delegate and a data source.
        // Make the delegate and the data source for the UIPickerView
        // this view controller.
        myPicker.dataSource = self
        myPicker.delegate = self
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Delegates and data sources
    
    // MARK: Data sources
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1 // We only have one "spinner" item in this picker view, so return a literal 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count // Tell the picker view how many rows to show
    }
    
    // MARK: Delegates
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        // This places the data to be shown in the picker view
        return pickerData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        // This method fires when the user selects a row in the picker
        // It returns the appropriate element from the array that is the data
        // source for the picker view
        myLabel.text = pickerData[row]
    }


}

