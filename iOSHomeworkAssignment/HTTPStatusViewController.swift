//
//  HTTPStatusViewController.swift
//  iOSHomeworkAssignment
//
//  Created by Bernard Désert on 12/22/17.
//  Copyright © 2017 Bernard Désert. All rights reserved.
//

import UIKit

class HTTPStatusViewController: UIViewController {
    
    var httpStatus: Int?
    
    var httpStatusDescription: String?
    
    @IBOutlet weak var httpStatusNumberLabel: UILabel!
    
    @IBOutlet weak var httpStatusDescriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        httpStatusNumberLabel.text = String(describing: httpStatus)
        
        httpStatusDescriptionLabel.text = httpStatusDescription
        
        // Do any additional setup after loading the view.
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
