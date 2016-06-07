//
//  ViewController2.swift
//  Taskapps
//
//  Created by Estudiantes on 5/20/16.
//  Copyright © 2016 Javeriana Cali. All rights reserved.
//

import UIKit

class ViewController2: UIViewController{
    
    @IBOutlet var nombretext: UITextField!
    var Manager = TaskManager()
    
    @IBOutlet var descriptiontext: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onTouch(sender: UIButton) {
        let ntext =  nombretext.text
        let dtext = descriptiontext.text
        Manager.addTask(ntext!,desc: dtext!)
    }
    
}
