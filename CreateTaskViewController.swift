//
//  CreateTaskViewController.swift
//  Do it
//
//  Created by Timothy Barrett on 8/27/16.
//  Copyright © 2016 Timothy Barrett. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    
    @IBOutlet weak var taskNameTextField: UITextField!
    @IBOutlet weak var inportantSwitch: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func addTappedButton(_ sender: AnyObject) {
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let task = Task(context: context)
        
        task.name = taskNameTextField.text!
        task.important = inportantSwitch.isOn
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        

        navigationController!.popViewController(animated: true)
    }
   
}
