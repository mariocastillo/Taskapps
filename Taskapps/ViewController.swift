//
//  ViewController.swift
//  Taskapps
//
//  Created by Estudiantes on 5/20/16.
//  Copyright © 2016 Javeriana Cali. All rights reserved.
//

import UIKit
import SwiftRestModel
import Restofire

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate{
    @IBOutlet var tableview: UITableView!
    var UserId:String?
    var Manager = TaskManager()
    var seleccionada:CustomCellClass = CustomCellClass()

    var person: [[String: AnyObject]]!
    var requestOp: RequestOperation<ContactsGETService>!
    
    
    
    deinit {
        requestOp.cancel()
    }
    
    
    
    func tableView(tableView: UITableView,
                     cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell:CustomCellClass = tableview.dequeueReusableCellWithIdentifier("CustomCell")as! CustomCellClass
        requestOp = ContactsGETService().executeTask() {
            if let value = $0.result.value {
                self.person = value
                /*for (index, element) in self.person.enumerate() {
                    
                }*/

                
                
                
                
                
                
            }
        }
        
        
        //let task = Manager.getTask(indexPath.row)
        
        
        
        
        
        
        
        
        return cell
    
    }
    func tableView(tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int{
        
        return Manager.count()
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == UITableViewCellEditingStyle.Delete{
            Manager.removeTask(indexPath.row)
            tableview.reloadData()
        }
        }

    
    override func viewWillAppear(animated: Bool) {
        navigationItem.title = "Contact " + UserId!
        
        
        
        tableview.reloadData()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView,
                     didSelectRowAtIndexPath indexPath: NSIndexPath){
        let seleccionada:CustomCellClass = tableview.cellForRowAtIndexPath(indexPath) as! CustomCellClass
        
        
        
        
        /*
        guard let rest = RestController.createFromURLString("http://localhost:8191/rest/contacts/"+UserId!) else {
            print("Bad URL")
            return
        }
        
        rest.get { result in
            do {
                let json = try result.value()
                print(json)
                print(json["userName"]?.stringValue)
            } catch {
                print("Error performing GET: \(error)")
            }
        }
 */
        
        
        
        
        
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "SendDataSegue" {
            seleccionada = tableview.cellForRowAtIndexPath(tableview.indexPathForSelectedRow!) as! CustomCellClass
            let barViewController = segue.destinationViewController as? CustomTabBar
            barViewController?.name=seleccionada.Name.text!
            let destination = barViewController?.viewControllers![0] as! MessageController
            let destination2= 
            
            destination.viasegue = seleccionada.Name.text!
        }
    }
    

}

