//
//  ViewController.swift
//  TodoApp
//
//  Created by 金妍廷 on 2022/02/21.
//

import UIKit
import RealmSwift



class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    var titile: String!
    var detail: String!
    var todo_list: [Todo] = []
    
//.first
//    let titles = ["task1","task2"]
   
    @IBOutlet var table: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        table.dataSource = self
        table.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        todo_list = get_todolist()
        table.reloadData()
    }
    
    func get_todolist() -> [Todo]{
        let realm = try! Realm()
        return Array(realm.objects(Todo.self))
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todo_list.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        cell?.textLabel?.text = todo_list[indexPath.row].todoTitle
        return cell!
    }
    
}

