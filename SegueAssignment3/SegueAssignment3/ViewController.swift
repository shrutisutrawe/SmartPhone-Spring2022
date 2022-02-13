//
//  ViewController.swift
//  SegueAssignment3
//
//  Created by Chandnani, Harsh on 2/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtFullName: UITextField!
    @IBOutlet weak var txtEmailAddress: UITextField!
    
    @IBOutlet weak var lblWelcome: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goToSecondVC(_ sender: Any) {
        guard let fullName = txtFullName.text, !fullName.isEmpty else {
            lblWelcome.text = "Please Enter Name"
            return
        }
        guard let emailAddress = txtEmailAddress.text, !emailAddress.isEmpty else {
            lblWelcome.text = "Please Enter Email Address"
            return
        }
        performSegue(withIdentifier: "segueToSecondVC", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "segueToSecondVC" {
           
            
            let secondVC = segue.destination as! SecondViewController
            secondVC.subscribeStr = "Welcome \(txtFullName.text!), \(txtEmailAddress.text!) has been registered"
        }
    }
}

