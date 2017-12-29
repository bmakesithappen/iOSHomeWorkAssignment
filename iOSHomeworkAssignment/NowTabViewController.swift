//
//  FirstViewController.swift
//  iOSHomeworkAssignment
//
//  Created by Bernard Désert on 12/21/17.
//  Copyright © 2017 Bernard Désert. All rights reserved.
//

import UIKit

class NowTabViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var rows = [(String, String)]()

    override func viewDidLoad() {
        super.viewDidLoad()

        tableview.delegate = self
        tableview.dataSource = self

        load()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }

    @IBOutlet weak var tableview: UITableView!

    @IBAction func refreshButton(_ sender: Any) {

        rows.removeAll()

        downloadData()

        tableview.reloadData()

    }
    // MARK: TableView
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
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
    
    // MARK: Data Persistance Functions

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

    // MARK: Fetch Data Function

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

}
