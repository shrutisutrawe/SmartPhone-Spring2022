//
//  ViewController.swift
//  MyProfile
//
//  Created by Chandnani, Harsh on 2/21/22.
//

import UIKit

class ViewController: UIViewController, sendNameAndAboutMeDelegate {
    
    @IBOutlet weak var lblFullName: UILabel!
    
    @IBOutlet weak var lblAboutMe: UILabel!
    
    @IBOutlet weak var lblWelcome: UILabel!
    
    @IBOutlet weak var button: UIButton!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        button.backgroundColor = UIColor(red: 0.298, green: 0.4392, blue: 1, alpha: 1.0);
        button.layer.borderWidth = 0.5;
        button.layer.borderColor = UIColor.blue.cgColor;
        // Do any additional setup after loading the view.
    }


    @IBAction func createProfile(_ sender: Any) {
        performSegue(withIdentifier: "segueCreateProfile", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueCreateProfile" {
            let createProfileVC = segue.destination as! CreateProfileViewController
            
            guard let fullName = lblFullName.text else{
                return
            }
            guard let aboutMe = lblAboutMe.text else {
                return
            }

            createProfileVC.fullName = fullName
            createProfileVC.aboutMe = aboutMe
            
            createProfileVC.sendNameAndAboutMeDelegate = self
        }
    }
    
    func setNameAndAboutMe(fullName: String, aboutMe: String) {
        lblFullName.text = fullName
        lblAboutMe.text = aboutMe
    }
    
    func setWelcomeText(welcomeText: String) {
        lblWelcome.text = welcomeText
    }
}

