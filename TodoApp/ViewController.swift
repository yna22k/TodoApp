//
//  ViewController.swift
//  TodoApp
//
//  Created by 金妍廷 on 2022/02/21.
//

import UIKit
import RealmSwift

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    var recieveTitleArray: [String]!
    var recieveDetailArray: [String]!
    
    //realmの変数を宣言
    let realm = try! Realm()
    
    
    @IBOutlet var table: UITableView!


    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        table.dataSource = self
        table.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        cell?.textLabel?.text = recieveTitleArray?[indexPath.row]
//        cell?.textLabel?.text = "テスト"
        return cell!
    }

}

