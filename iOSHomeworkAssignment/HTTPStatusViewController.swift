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

        httpStatusNumberLabel.text = String(describing: httpStatus)

        httpStatusDescriptionLabel.text = httpStatusDescription

        if let catImage = getCatImage(code: httpStatus ?? 200) {
            imageView.image = catImage
        }

    }

    func getCatImage(code: Int) -> UIImage? {
        let urlAddress = "https://http.cat/" + String(code)
        let url = URL(string: urlAddress)
        if let catImageData = try? Data(contentsOf: url!) {
            return UIImage(data: catImageData )
        }
        return nil
    }


}
