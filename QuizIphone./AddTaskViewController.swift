//
//  AddTaskViewController.swift
//  QuizIphone.
//
//  Created by Sam Pramudana on 10/25/17.
//  Copyright © 2017 Sam Pramudana. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController {

    @IBOutlet weak var etCommpany: UITextField!
    @IBOutlet weak var etSeries: UITextField!
    @IBOutlet weak var etPhoneName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func btnSaveTask(_ sender: Any) {
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        let nameTask = Iphone(context : context)
        nameTask.name_task = etPhoneName.text
        nameTask.day_task = etSeries.text
        nameTask.des_task = etCommpany.text
        
        if etPhoneName.text == ""{
            let alert = UIAlertController(title: "WARNING!!!", message: "Task can not be empty", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        }else{
            (UIApplication.shared.delegate as! AppDelegate).saveContext()
            _ = navigationController?.popViewController(animated: true)
            print("Data Berhasil Disimpan")
        }
        if etSeries.text == ""{
            let alert = UIAlertController(title: "WARNING!!!", message: "Task can not be empty", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        }else{
            (UIApplication.shared.delegate as! AppDelegate).saveContext()
            _ = navigationController?.popViewController(animated: true)
        }
        if etCommpany.text == ""{
            let alert = UIAlertController(title: "WARNING!!!", message: "Task can not be empty", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        }else{
            (UIApplication.shared.delegate as! AppDelegate).saveContext()
            _ = navigationController?.popViewController(animated: true)
        }
            
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
