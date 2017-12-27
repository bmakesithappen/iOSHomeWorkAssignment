//
//  FirstViewController.swift
//  iOSHomeworkAssignment
//
//  Created by Bernard Désert on 12/21/17.
//  Copyright © 2017 Bernard Désert. All rights reserved.
//

import UIKit

class NowTab: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    var rows = ["row1", "row2"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableview.delegate = self
        tableview.dataSource = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var tableview: UITableView!
    
    @IBAction func refreshButton(_ sender: Any) {
        
        rows.append("new row")
        tableview.reloadData()
    }
    
    // TODO: Review explanation of tableview below.  Breakdown how did we decide "row1 and row2" show.
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return rows.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let title = rows[indexPath.row]
        cell.textLabel?.text = title
        
        return cell


    }
     
     /*
     
     {"now": {"epoch": 1514409469.6526053, "slang_date": "today", "slang_time": "now", "iso8601": "2017-12-27T21:17:49.652605Z", "rfc2822": "Wed, 27 Dec 2017 21:17:49 GMT", "rfc3339": "2017-12-27T21:17:49.65Z"}, "urls": ["/", "/docs", "/when/:human-timestamp", "/parse/:machine-timestamp"]}
 
 */
}
