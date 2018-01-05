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
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        httpStatusNumberLabel.text = String(describing: httpStatus ?? 200)
        
        httpStatusDescriptionLabel.text = httpStatusDescription
        
        getCatImage(code: httpStatus ?? 200)
        //        if let catImage = getCatImage(code: httpStatus ?? 200) {
        //            imageView.image = catImage
        //        }
    }
    
    // MARK: Image Function
    
    func getCatImage(code: Int) {
        let urlAddress = "https://http.cat/" + String(code)
        let url = URL(string: urlAddress)
        
        URLSession.shared.dataTask(with: url!) { (_,_, _) in
            if let catImageData = try? Data(contentsOf: url!) {
                DispatchQueue.main.async {
                    self.imageView.image = UIImage(data: catImageData)
                }
            }
        }.resume()
    }
}
