//
//  FirstViewController.swift
//  iOSHomeworkAssignment
//
//  Created by Bernard Désert on 12/21/17.
//  Copyright © 2017 Bernard Désert. All rights reserved.
//

import UIKit

class NowTab: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    var rows = [(String, String)]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableview.delegate = self
        tableview.dataSource = self
        
        load()
        
        
    
   //     downloadData()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var tableview: UITableView!
    
    @IBAction func refreshButton(_ sender: Any) {
        
        rows.removeAll()
        
        downloadData()
        
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
        let title = rows[indexPath.row].0
        cell.textLabel?.text = title
        
        let detail = rows[indexPath.row].1
        cell.detailTextLabel?.text = detail
        
        return cell
        
    }
    
    func elementToString(_ element: JSON) -> String {
        if let string = element.string {
            return string
        }
        
        if let number = element.number as? Double {
            return String(number)
        }
        return element.description
    }

    func save(json:String) {
        UserDefaults.standard.set(json, forKey: "JSON")
    }
    
        func load() {
            if let json = UserDefaults.standard.string(forKey: "JSON"),
                let jsonData = json.data(using: .utf8) {
                let now = JSON(jsonData)
                for (key, value) in now {
                    rows.append((key, elementToString(value)))
                }
            }
    }
        
    func downloadData() {
        let urlAddress = "https://now.httpbin.org/"
        let url = URL(string: urlAddress)
        if let nowData = NSData(contentsOf: url!) {
            let now = JSON(nowData)["now"]
            save(json: now.rawString() ?? "")
            for (key, value) in now {
                rows.append((key, elementToString(value)))
            }
        }
    }
        
/*
   
     
     {"now": {"epoch": 1514409469.6526053, "slang_date": "today", "slang_time": "now", "iso8601": "2017-12-27T21:17:49.652605Z", "rfc2822": "Wed, 27 Dec 2017 21:17:49 GMT", "rfc3339": "2017-12-27T21:17:49.65Z"}, "urls": ["/", "/docs", "/when/:human-timestamp", "/parse/:machine-timestamp"]}
 
 */

}
