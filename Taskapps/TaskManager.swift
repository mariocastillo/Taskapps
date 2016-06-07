//
//  TaskManager.swift
//  Taskapps
//
//  Created by Estudiantes on 5/20/16.
//  Copyright © 2016 Javeriana Cali. All rights reserved.
//

import UIKit
import SQLite

public class TaskManager {
     /*
    static var listTask:[Task]=[]
    init(){
        
    }

    static func addTask(task:Task) {
        listTask.append(task)
    }
    static func countTask() -> Int {
        return listTask.count
    }
    static func getTask(i:Int) -> Task {
        return listTask[i]
    }
    static func removeTask(i:Int) {
        listTask.removeAtIndex(i)
    }*/
    
    private var db:Connection
    
    private var contacts:Table
    private var nameColumn:Expression<String>
    private var nombreColumn:Expression<String>
    private var idColumn:Expression<Int>
    
    init(){
        let path = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true).first!
        
        db = try! Connection("\(path)/db.sqlite3")
        
        contacts = Table("task")
        idColumn = Expression<Int>("id")
        nameColumn = Expression<String>("name")
        nombreColumn = Expression<String>("nombre")
        
        //try! db.run(tasks.drop(ifExists: true))
        try! db.run(contacts.create(ifNotExists: true) { t in
            t.column(idColumn, primaryKey: PrimaryKey.Autoincrement)
            t.column(nameColumn)
            t.column(nombreColumn)
            })
    }
    
    func addTask(name:String, desc:String) {
        try! db.run(tasks.insert(nameColumn <- name, nombreColumn <- desc))
    }
    
    func getTask(id:Int) -> Task{
        let query = tasks.limit(1, offset: id)
        let task = Array(try! db.prepare(query))[0]
        
        return Task(name: task.get(nameColumn) , description: task.get(descriptionColumn));
    }
    
    func removeTask(id:Int) {
        let query = tasks.limit(1, offset: id)
        let task = Array(try! db.prepare(query))[0]
        
        try! db.run(tasks.filter(idColumn == task.get(idColumn)).delete())
    }
    
    func count() -> Int {
        return db.scalar(tasks.count)
    }
    
    
    

    

}
