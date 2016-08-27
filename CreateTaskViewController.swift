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
    
    var previousVC = TasksViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func addTappedButton(_ sender: AnyObject) {
        
        let task = Task()
        task.name = taskNameTextField.text!
        task.important = inportantSwitch.isOn
        
    }
   
}
