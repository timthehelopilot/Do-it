//
//  TasksViewController.swift
//  Do it
//
//  Created by Timothy Barrett on 8/24/16.
//  Copyright © 2016 Timothy Barrett. All rights reserved.
//

import UIKit

class TasksViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var toDoTableView: UITableView!
    
    var tasks: [Task] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        tasks = makeTasks()
        
        toDoTableView.delegate = self
        toDoTableView.dataSource = self
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let task = tasks[indexPath.row]
        
        if task.important {
            cell.textLabel?.text = "❗️\(task.name)"

        }else {
            cell.textLabel?.text = task.name

        }
        
               return cell
    }

    func makeTasks() -> [Task] {
        let task1 = Task()
        task1.name = "Walk the dog"
        task1.important = true
        
        let task2 = Task()
        task2.name = "Buy groceries"
        task2.important = true
        
        let task3 = Task()
        task3.name = "Take out the trash"
        task3.important = false
        
        return [task1, task2, task3]
    }
    
    @IBAction func addButtonTapped(_ sender: AnyObject) {
        performSegue(withIdentifier: "addSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextVC = segue.destination as! CreateTaskViewController
        nextVC.previousVC = self
    }
    
}

