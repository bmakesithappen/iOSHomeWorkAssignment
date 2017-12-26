//
//  SecondViewController.swift
//  iOSHomeworkAssignment
//
//  Created by Bernard Désert on 12/21/17.
//  Copyright © 2017 Bernard Désert. All rights reserved.
//

import UIKit

class HTTPStatusTab: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var HTTPStatusUIPicker: UIPickerView!
    
    var pickerData = [NSString]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 0
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 0
    }

    /*
     
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "openAddItemPickerView" {
            category = Category(rawValue: pickerData[self.itemPicker.selectedRow(inComponent: 0)])
            let destination = segue.destination as! DetailItemViewController
            destination.category = category
            
        }
    }
 
     */

}

