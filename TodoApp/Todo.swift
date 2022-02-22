//
//  Todo.swift
//  TodoApp
//
//  Created by 金妍廷 on 2022/02/22.
//

import Foundation
import RealmSwift


//データの型を作る
class Todo: Object{
    @objc dynamic var todoTitle: String = ""
    @objc dynamic var todoDetail: String = ""
}
