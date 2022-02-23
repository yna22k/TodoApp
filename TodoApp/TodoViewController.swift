//
//  TodoViewController.swift
//  TodoApp
//
//  Created by 金妍廷 on 2022/02/21.
//

import UIKit
import RealmSwift

class TodoViewController: UIViewController {
    
//    let realm = try! Realm()
    
    @IBOutlet var todoTextField: UITextField!
    @IBOutlet var todoTextView: UITextView!
    @IBOutlet var deadlineTextField: UITextField!
    
    var titile: String!
    var detail: String!


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func saveTodo(){
        let realm = try! Realm() // Realmをインスタンス化
        
        let todoTitle: String = todoTextField.text!
        let todoDetail: String = todoTextView.text!
        
        let todo_instance = Todo()
        todo_instance.todoTitle = todoTitle
        todo_instance.todoDetail = todoDetail
        
        realm.beginWrite()
        realm.add(todo_instance)
        try! realm.commitWrite()
        
//        self.navigationController?.popViewController(animated: true)
        
    }
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


//}
