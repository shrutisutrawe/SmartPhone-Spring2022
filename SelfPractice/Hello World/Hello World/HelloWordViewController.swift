//
//  ViewController.swift
//  Hello World
//
//  Created by Chandnani, Harsh on 1/30/22.
//

import UIKit

class HelloWordViewController: UIViewController {

    @IBOutlet weak var lblHelloWorld: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("View did load for VC")
        // Do any additional setup after loading the view.
    }
    
    @IBAction func ClickMeFunction(_ sender: UIButton) {
        print("Button Clicked")
        lblHelloWorld.text = "Welcome!"
    }
    
}

