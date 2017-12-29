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


class HTTPStatusDataManager: NSObject {

    var httpStatuses = [100, 101, 200, 202, 204, 300, 305, 408, 417, 450, 500, 599]
    
    var httpStatusesDescriptions = ["Continue","Switching Protocols", "OK", "Accepted", "No Content", "Multiple Choices", "Use Proxy", "Request Timeout", "Exception Failed", "Blocked by Windows Parental Controls", "Internal Server Error", "Network Connection Server Error" ]

}
