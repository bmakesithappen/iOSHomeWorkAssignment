//
//  SecondViewController.swift
//  iOSHomeworkAssignment
//
//  Created by Bernard Désert on 12/21/17.
//  Copyright © 2017 Bernard Désert. All rights reserved.
//

import UIKit

class HTTPStatusTabViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    let statusManager = HTTPStatusDataManager()

    @IBOutlet weak var HTTPStatusUIPicker: UIPickerView!
 
    var pickerData: [String]?

    override func viewDidLoad() {
        super.viewDidLoad()

        self.HTTPStatusUIPicker.delegate = self
        self.HTTPStatusUIPicker.dataSource = self

        // #review: mapping 
        pickerData = statusManager.httpStatuses.map( {String($0) } )

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: UIPickerView
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData?.count ?? 0

    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData?[row]
    }

    // MARK: Segue to HTTPStatusViewController 
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "openHTTPStatusViewController" {
            let httpStatus = statusManager.httpStatuses[self.HTTPStatusUIPicker.selectedRow(inComponent: 0)]
            let httpStatusDescription = statusManager.httpStatusesDescriptions[self.HTTPStatusUIPicker.selectedRow(inComponent: 0)]
            let destination = segue.destination as! HTTPStatusViewController
            destination.httpStatus = httpStatus
            destination.httpStatusDescription = httpStatusDescription

        }
    }

}

