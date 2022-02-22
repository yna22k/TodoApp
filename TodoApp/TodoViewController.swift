//
//  TodoViewController.swift
//  TodoApp
//
//  Created by 金妍廷 on 2022/02/21.
//

import UIKit
import RealmSwift

class TodoViewController: UIViewController {
    
    let realm = try! Realm()
    
    @IBOutlet var todoTextField: UITextField!
    @IBOutlet var todoTextView: UITextView!
    @IBOutlet var deadlineTextField: UITextField!
    
    var titleArray = [String]()
    var detailArray = [String]()


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        let todo: Todo? = read()
//        if todo != nil{
//            todoTextField.text = todo?.todoTitle
//            todoTextView.text = todo?.todoDetail
//        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let ViewController: ViewController = segue.destination as! ViewController
        ViewController.recieveTitleArray = self.titleArray
        ViewController.recieveDetailArray = self.detailArray
    }
    
    
    @IBAction func saveTodo(){
        let todoTitle: String = todoTextField.text!
        let todoDetail: String = todoTextView.text!
        
        titleArray.append(todoTitle)
        detailArray.append(todoDetail)
        print(titleArray)
    
        self.navigationController?.popViewController(animated: true)
        
        
        
        
        
//        let todo: Todo?  = read()
//        if todo != nil{
//            try! realm.write{
//                todo!.todoTitle = todoTitle
//                todo!.todoDetail = todoDetail
//                }
//            } else {
//                let newTodo = Todo()
//                newTodo.todoTitle = todoTitle
//                newTodo.todoDetail = todoDetail
//                try! realm .write{
//                    realm.add(newTodo)
//                }
//            }
//        }
    
        func read() -> Todo?{
        return realm.objects(Todo.self).first
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


}
