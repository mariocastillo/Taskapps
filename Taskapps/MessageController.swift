//
//  MessageController.swift
//  Taskapps
//
//  Created by Estudiantes on 5/31/16.
//  Copyright © 2016 Javeriana Cali. All rights reserved.
//

import UIKit

class MessageController: UIViewController {

    
    @IBOutlet var textMessage: UITextField!
    var viasegue:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(animated: Bool) {
        navigationItem.title = viasegue
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Send_Button(sender: AnyObject) {
        let mText = textMessage.text
        
        
        /*
        // create the alert
        let alert = UIAlertController(title: "My Title", message:mText, preferredStyle: UIAlertControllerStyle.Alert)
        
        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        
        // show the alert
        self.presentViewController(alert, animated: true, completion: nil)
        */
        
        
        textMessage.text=""
        
        
        
        
    }

   
    @IBAction func Refresh_Button(sender: AnyObject) {
    }
    
    

}
