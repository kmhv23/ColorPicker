//
//  ViewController.swift
//  ColorPicker
//
//  Created by Kevin Hunkins on 11/16/17.
//  Copyright © 2017 Kevin Hunkins. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var pickerView: UIPickerView!
    
     var colors = [Color(name:"red", uiColor: UIColor.red), Color(name:"orange", uiColor: UIColor.orange),Color(name:"green", uiColor: UIColor.green),  Color(name:"blue", uiColor: UIColor.blue), Color(name:"yellow", uiColor: UIColor.yellow),  Color(name:"purple", uiColor: UIColor.purple), Color(name:"brown", uiColor: UIColor.brown)]
    
    @IBOutlet weak var label: UILabel!
    
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row].name
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.view.backgroundColor = colors[row].uiColor
        self.label.text = colors[row].name
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red
        self.label.text = "red"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

