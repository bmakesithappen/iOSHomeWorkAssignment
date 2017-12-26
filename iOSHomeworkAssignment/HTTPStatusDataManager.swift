//
//  HTTPStatusDataManager.swift
//  iOSHomeworkAssignment
//
//  Created by Bernard Désert on 12/26/17.
//  Copyright © 2017 Bernard Désert. All rights reserved.
//

import UIKit

/*
 
 Numbers to work with
 100, 101, 200 - 202, 204, 206, 207, 300 - 305
 401 - 406, 408 - 418, 420 - 426, 429, 431, 444, 450, 451
 500, 502 - 511, 599
 
 */

enum HTTPSTatuses: String {
    
    case Test1
    
    case Test2
    
}

class HTTPStatusDataManager: NSObject {

    var httpstatuses: HTTPSTatuses?
    
    init(httpstatuses:HTTPSTatuses? = nil) {
        self.httpstatuses = httpstatuses
        super.init()
    }

}