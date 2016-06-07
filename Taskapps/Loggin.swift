//
//  Loggin.swift
//  Taskapps
//
//  Created by Estudiantes on 6/1/16.
//  Copyright © 2016 Javeriana Cali. All rights reserved.
//

import UIKit

class Loggin: UIViewController {

    @IBOutlet var UserId: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier=="UserIdData" {
            let destination = segue.destinationViewController as? ViewController
            
            destination!.UserId = UserId.text
        }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
