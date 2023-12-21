//
//  MyTableViewController.swift
//  PracticeUI
//
//  Created by a on 2023/12/21.
//

import UIKit

class MyTableViewController: UIViewController {
    
    let friendNames: [String] = ["Henry", "Leeo", "Jay", "Key"]
    
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTableView.backgroundColor = .blue
        
        myTableView.delegate = self
        myTableView.dataSource = self
    }
    
}


extension MyTableViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "MyFirstCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = friendNames[indexPath.row]
        cell.contentConfiguration = content
        
        return cell
    }
    
    
}
