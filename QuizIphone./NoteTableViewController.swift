//
//  NoteTableViewController.swift
//  QuizIphone.
//
//  Created by Sam Pramudana on 10/25/17.
//  Copyright © 2017 Sam Pramudana. All rights reserved.
//

import UIKit

class NoteTableViewController: UITableViewController {
    
    var tasks: [Iphone] = []
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return tasks.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellTable", for: indexPath) as! DescTableViewCell

        // Configure the cell...
        
        let dataTask = tasks[indexPath.row]
        if let myDataTask = dataTask.name_task {
            cell.labelIphone.text = myDataTask
        }
        if let myDataTask1 = dataTask.des_task {
            cell.labelMerk.text = myDataTask1
        }
        if let myDataTask2 = dataTask.day_task {
            cell.labelSeri.text = myDataTask2
        }

        return cell
    }
    override func viewWillAppear(_ animated: Bool) {
        
        getData()
        tableView.reloadData()
    }
    func getData() {
        do {
            tasks = try context.fetch(Iphone.fetchRequest())
        }
        catch {
            print ("Fetching Failed")
        }
    }
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            let task = tasks[indexPath.row]
            context.delete(task)
            (UIApplication.shared.delegate as! AppDelegate).saveContext()
            
            do{
                tasks = try context.fetch(Iphone.fetchRequest())
            }
            catch {
                print ("Fetching Failed")
            }
        }
        tableView.reloadData()
    }
    
}
