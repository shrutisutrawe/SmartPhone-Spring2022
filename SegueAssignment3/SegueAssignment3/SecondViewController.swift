//
//  SecondViewController.swift
//  SegueAssignment3
//
//  Created by Chandnani, Harsh on 2/12/22.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var lblSubscribe: UILabel!
    
    var subscribeStr = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblSubscribe.text = subscribeStr

        // Do any additional setup after loading the view.
    }
    

    @IBAction func goBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }

}
