//
//  ColorPickerViewController.swift
//  color-picker
//
//  Created by Zachary Dobbs on 4/15/18.
//  Copyright © 2018 Zachary Dobbs. All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var colorPicker: UIPickerView!
    
    // initial index value
    let initial = 0
    
    struct Color {
        let name: String
        let color: UIColor
    }
    
    let colors = [
        Color(name: "Red", color: UIColor.red),
        Color(name: "Orange", color: UIColor.orange),
        Color(name: "Yellow", color: UIColor.yellow),
        Color(name: "Green", color: UIColor.green),
        Color(name: "Blue", color: UIColor.blue)
    ]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row].name
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        colorLabel.text = colors[row].name
        self.view.backgroundColor = colors[row].color
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // connect picker
        self.colorPicker.delegate = self
        self.colorPicker.dataSource = self
        
        // establish initial index
        colorLabel.text = colors[initial].name
        self.view.backgroundColor = colors[initial].color
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
