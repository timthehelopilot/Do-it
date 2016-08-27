//
//  CompleteTaskViewController.swift
//  Do it
//
//  Created by Timothy Barrett on 8/27/16.
//  Copyright © 2016 Timothy Barrett. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {
    
    @IBOutlet weak var taskLabel: UILabel!
    
    
    var previousVC = TasksViewController()
    var task = Task()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if task.important {
            taskLabel?.text = "❗️\(task.name)"
            
        }else {
            taskLabel?.text = task.name
            
        }

    }

    @IBAction func completeTapped(_ sender: AnyObject) {
        
        previousVC.tasks.remove(at: previousVC.selectedIndex)
        previousVC.toDoTableView.reloadData()
        navigationController!.popViewController(animated: true)
    }
}
